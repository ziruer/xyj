package spring.boot.core.mapper;

import org.apache.ibatis.annotations.*;
import spring.boot.core.pojo.XYJSuit;

import java.util.List;

// @Mapper 这里可以使用@Mapper注解，但是每个mapper都加注解比较麻烦，所以统一配置@MapperScan在扫描路径在application类中
public interface XYJSuitMapper {

    @Select("SELECT * FROM xyjsuit WHERE id = #{id}")
    public XYJSuit getSuitById(Integer id);

    @Select("SELECT * FROM xyjsuit")
    public List<XYJSuit> getSuitList();

    @Insert("insert into xyjsuit(name, des1, des2, des3) values(#{name}, #{des1}, #{des2}, #{des3})")
    public int add(XYJSuit xyjSuit);

    @Update("UPDATE xyjsuit SET name = #{xyjsuit.name} , des1 = #{xyjsuit.des1} , des2 = #{xyjsuit.des2} , des3 = #{xyjsuit.des3} WHERE id = #{id}")
    public int update(@Param("id") Integer id, @Param("xyjsuit") XYJSuit xyjsuit);

    @Delete("DELETE from xyjsuit where id = #{id} ")
    public int delete(Integer id);
}

