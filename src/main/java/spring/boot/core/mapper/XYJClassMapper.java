package spring.boot.core.mapper;

import org.apache.ibatis.annotations.*;
import spring.boot.core.pojo.XYJClass;

import java.util.List;

// @Mapper 这里可以使用@Mapper注解，但是每个mapper都加注解比较麻烦，所以统一配置@MapperScan在扫描路径在application类中
public interface XYJClassMapper {

    @Select("SELECT * FROM xyjclass WHERE id = #{id}")
    public XYJClass getClassById(Integer id);

    @Select("SELECT * FROM xyjclass")
    public List<XYJClass> getClassList();

    @Insert("insert into xyjclass(name, des, suitid) values(#{name}, #{des}, #{suitid})")
    public int add(XYJClass xyjClass);

    @Update("UPDATE xyjclass SET name = #{xyjclass.name} , des = #{xyjclass.des} , suitid=#{xyjclass.suitid} WHERE id = #{id}")
    public int update(@Param("id") Integer id, @Param("xyjclass") XYJClass xyjclass);

    @Delete("DELETE from xyjclass where id = #{id} ")
    public int delete(Integer id);
}

