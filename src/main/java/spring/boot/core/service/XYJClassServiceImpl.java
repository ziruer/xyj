package spring.boot.core.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import spring.boot.core.mapper.XYJClassMapper;
import spring.boot.core.mapper.XYJSuitMapper;
import spring.boot.core.pojo.XYJClass;
import spring.boot.core.pojo.XYJSuit;

import java.util.List;

/**
 * @ClassName cn.saytime.service.impl.UserServiceImpl
 * @Description
 */
@Service
public class XYJClassServiceImpl implements XYJClassService {

    @Autowired
    private XYJClassMapper mapper;

    @Autowired
    private XYJSuitMapper suitMapper;


    @Override
    public XYJClass getClassById(Integer id) {
        return mapper.getClassById(id);
    }

    @Override
    public List<XYJClass> getClassList()
    {
        List<XYJClass> xyjClasses = mapper.getClassList();

        for(int i=0; i<xyjClasses.size(); i++)
        {
            XYJClass xyjClass = xyjClasses.get(i);
            XYJSuit suit = suitMapper.getSuitById(xyjClass.getSuitid());
            if(suit != null)
            {
                xyjClass.setSuitName(suit.getName());
            }

        }

        return xyjClasses;
    }

    @Override
    public int add(XYJClass xyjClass) {
        return mapper.add(xyjClass);
    }

    @Override
    public int update(Integer id, XYJClass xyjClass) {
        return mapper.update(id, xyjClass);
    }

    @Override
    public int delete(Integer id) {
        return mapper.delete(id);
    }
}
