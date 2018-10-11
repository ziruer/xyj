package spring.boot.core.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import spring.boot.core.pojo.XYJClass;
import spring.boot.core.service.XYJClassService;
import spring.boot.core.util.JsonResult;

import java.util.List;

/**
 * @ClassName cn.saytime.web.UserController
 * @Description
 * @date 2017-07-04 22:46:14
 */
@Controller
public class XYJClassController {

    @Autowired
    private XYJClassService service;

    /**
     * 查询所有门派
     * @return
     */
    @RequestMapping(value = "classes", method = RequestMethod.GET)
    public ResponseEntity<JsonResult> getClassList(){
        JsonResult r = new JsonResult();
        try {
            List<XYJClass> xyjClasses = service.getClassList();
            r.setResult(xyjClasses);
            r.setStatus("ok");
        } catch (Exception e) {
            r.setResult(e.getClass().getName() + ":" + e.getMessage());
            r.setStatus("error");
            e.printStackTrace();
        }
        return ResponseEntity.ok(r);
    }



    /**
     * 根据ID查询门派
     * @param id
     * @return
     */
    @RequestMapping(value = "class/{id}", method = RequestMethod.GET)
    public ResponseEntity<JsonResult> getClassByID (@PathVariable(value = "id") Integer id){
        JsonResult r = new JsonResult();
        try {
            XYJClass xyjClass = service.getClassById(id);
            r.setResult(xyjClass);
            r.setStatus("ok");
        } catch (Exception e) {
            r.setResult(e.getClass().getName() + ":" + e.getMessage());
            r.setStatus("error");
            e.printStackTrace();
        }
        return ResponseEntity.ok(r);
    }


    /**
     * 添加门派
     * @param user
     * @return
     */
    @RequestMapping(value = "class", method = RequestMethod.POST)
    public ResponseEntity<JsonResult> add (@RequestBody XYJClass user){
        JsonResult r = new JsonResult();
        try {
            int orderId = service.add(user);
            if (orderId < 0) {
                r.setResult(orderId);
                r.setStatus("fail");
            } else {
                r.setResult(orderId);
                r.setStatus("ok");
            }
        } catch (Exception e) {
            r.setResult(e.getClass().getName() + ":" + e.getMessage());
            r.setStatus("error");

            e.printStackTrace();
        }
        return ResponseEntity.ok(r);
    }


    /**
     * 根据id删除门派
     * @param id
     * @return
     */
    @RequestMapping(value = "class/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<JsonResult> delete (@PathVariable(value = "id") Integer id){
        JsonResult r = new JsonResult();
        try {
            int ret = service.delete(id);
            if (ret < 0) {
                r.setResult(ret);
                r.setStatus("fail");
            } else {
                r.setResult(ret);
                r.setStatus("ok");
            }
        } catch (Exception e) {
            r.setResult(e.getClass().getName() + ":" + e.getMessage());
            r.setStatus("error");

            e.printStackTrace();
        }
        return ResponseEntity.ok(r);
    }

    /**
     * 根据id修改门派信息
     * @param user
     * @return
     */
    @RequestMapping(value = "class/{id}", method = RequestMethod.PUT)
    public ResponseEntity<JsonResult> update (@PathVariable("id") Integer id, @RequestBody XYJClass user){
        JsonResult r = new JsonResult();
        try {
            int ret = service.update(id, user);
            if (ret < 0) {
                r.setResult(ret);
                r.setStatus("fail");
            } else {
                r.setResult(ret);
                r.setStatus("ok");
            }
        } catch (Exception e) {
            r.setResult(e.getClass().getName() + ":" + e.getMessage());
            r.setStatus("error");

            e.printStackTrace();
        }
        return ResponseEntity.ok(r);
    }

    /**
     * 以下使用模板模式
     */


    @RequestMapping(value = "classes/list", method = RequestMethod.GET)
    public String getClassList(ModelMap map) {
        map.addAttribute("classList", service.getClassList());
        return "classList";
    }

    /**
     * 显示创建用户表单
     *
     * @param map
     * @return
     */
    @RequestMapping(value = "classes/create", method = RequestMethod.GET)
    public String createClassForm(ModelMap map) {
        map.addAttribute("user", new XYJClass());
        map.addAttribute("action", "create");
        return "classForm";
    }

    /**
     *  创建用户
     *    处理 "/classe" 的 POST 请求，用来获取用户列表
     *    通过 @ModelAttribute 绑定参数，也通过 @RequestParam 从页面中传递参数
     */
    @RequestMapping(value = "classes/create", method = RequestMethod.POST)
    public String postUser(ModelMap map,
                           @ModelAttribute XYJClass xyjClass,
                           BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            map.addAttribute("action", "create");
            return "classForm";
        }

        service.add(xyjClass);

        return "redirect:/classes/list";
    }


    /**
     * 显示需要更新用户表单
     *    处理 "/users/{id}" 的 GET 请求，通过 URL 中的 id 值获取 User 信息
     *    URL 中的 id ，通过 @PathVariable 绑定参数
     */
    @RequestMapping(value = "classes/update/{id}", method = RequestMethod.GET)
    public String getClass(@PathVariable Integer id, ModelMap map) {
        map.addAttribute("user", service.getClassById(id));
        map.addAttribute("action", "update");
        return "classForm";
    }


    /**
     * 处理 "/users/{id}" 的 PUT 请求，用来更新 User 信息
     *
     */
    @RequestMapping(value = "classes/update", method = RequestMethod.POST)
    public String putClass(ModelMap map,
                          @ModelAttribute XYJClass user,
                          BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            map.addAttribute("action", "update");
            return "userForm";
        }

        service.update(user.getId(), user);
        return "redirect:/classes/list/";
    }


    /**
     * 处理 "/users/{id}" 的 GET 请求，用来删除 User 信息
     */
    @RequestMapping(value = "classes/delete/{id}", method = RequestMethod.GET)
    public String deleteClass(@PathVariable Integer id) {

        service.delete(id);
        return "redirect:/classes/list/";
    }



}
