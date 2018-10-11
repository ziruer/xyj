package spring.boot.core.service;

import spring.boot.core.pojo.XYJSuit;

import java.util.List;

/**
 * @ClassName cn.saytime.service.UserService
 * @Description
 */
public interface XYJSuitService {

    public XYJSuit getSuitById(Integer id);

    public List<XYJSuit> getSuitList();

    public int add(XYJSuit xyjSuit);

    public int update(Integer id, XYJSuit xyjSuit);

    public int delete(Integer id);
}
