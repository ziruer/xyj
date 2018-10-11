package spring.boot.core.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import spring.boot.core.pojo.XYJClass;
import spring.boot.core.pojo.XYJSuit;
import spring.boot.core.service.XYJClassService;
import spring.boot.core.service.XYJSuitService;
import spring.boot.core.util.JsonResult;

import java.util.List;

/**
 * @ClassName cn.saytime.web.UserController
 * @Description
 * @date 2017-07-04 22:46:14
 */
@Controller
public class XYJSuitController {

    @Autowired
    private XYJSuitService service;


    @RequestMapping(value = "suit/list", method = RequestMethod.GET)
    public String getSuitList(ModelMap map) {
        map.addAttribute("suitList", service.getSuitList());
        return "suitList";
    }

    /**
     * 显示创建用户表单
     *
     * @param map
     * @return
     */
    @RequestMapping(value = "suit/create", method = RequestMethod.GET)
    public String createSuitForm(ModelMap map) {
        map.addAttribute("suit", new XYJSuit());
        map.addAttribute("action", "create");
        return "suitForm";
    }

    /**
     *  创建用户
     *    处理 "/classe" 的 POST 请求，用来获取用户列表
     *    通过 @ModelAttribute 绑定参数，也通过 @RequestParam 从页面中传递参数
     */
    @RequestMapping(value = "suit/create", method = RequestMethod.POST)
    public String postSuit(ModelMap map,
                           @ModelAttribute XYJSuit xyjSuit,
                           BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            map.addAttribute("action", "create");
            return "classForm";
        }

        service.add(xyjSuit);

        return "redirect:/suit/list";
    }


    /**
     * 显示需要更新用户表单
     *    处理 "/users/{id}" 的 GET 请求，通过 URL 中的 id 值获取 User 信息
     *    URL 中的 id ，通过 @PathVariable 绑定参数
     */
    @RequestMapping(value = "suit/update/{id}", method = RequestMethod.GET)
    public String getSuit(@PathVariable Integer id, ModelMap map) {
        map.addAttribute("suit", service.getSuitById(id));
        map.addAttribute("action", "update");
        return "suitForm";
    }


    /**
     * 处理 "/users/{id}" 的 PUT 请求，用来更新 User 信息
     *
     */
    @RequestMapping(value = "suit/update", method = RequestMethod.POST)
    public String putSuit(ModelMap map,
                          @ModelAttribute XYJSuit xyjSuit,
                          BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            map.addAttribute("action", "update");
            return "suitForm";
        }

        service.update(xyjSuit.getId(), xyjSuit);
        return "redirect:/suit/list/";
    }


    /**
     * 处理 "/users/{id}" 的 GET 请求，用来删除 User 信息
     */
    @RequestMapping(value = "suit/delete/{id}", method = RequestMethod.GET)
    public String deleteSuit(@PathVariable Integer id) {

        service.delete(id);
        return "redirect:/suit/list/";
    }



}
