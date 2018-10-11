package spring.boot.core.service;

import spring.boot.core.pojo.XYJClass;

import java.util.List;

/**
 * @ClassName cn.saytime.service.UserService
 * @Description
 */
public interface XYJClassService {

    public XYJClass getClassById(Integer id);

    public List<XYJClass> getClassList();

    public int add(XYJClass xyjClass);

    public int update(Integer id, XYJClass xyjClass);

    public int delete(Integer id);
}
