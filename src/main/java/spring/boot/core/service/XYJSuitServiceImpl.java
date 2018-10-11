package spring.boot.core.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import spring.boot.core.mapper.XYJSuitMapper;
import spring.boot.core.pojo.XYJSuit;

import java.util.List;

/**
 * @ClassName cn.saytime.service.impl.UserServiceImpl
 * @Description
 */
@Service
public class XYJSuitServiceImpl implements XYJSuitService {

    @Autowired
    private XYJSuitMapper mapper;


    @Override
    public XYJSuit getSuitById(Integer id) {
        return mapper.getSuitById(id);
    }

    @Override
    public List<XYJSuit> getSuitList() {
        return mapper.getSuitList();
    }

    @Override
    public int add(XYJSuit xyjSuit) {
        return mapper.add(xyjSuit);
    }

    @Override
    public int update(Integer id, XYJSuit xyjSuit) {
        return mapper.update(id, xyjSuit);
    }

    @Override
    public int delete(Integer id) {
        return mapper.delete(id);
    }
}
