package spring.boot.core;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("spring.boot.core.mapper")
public class XYJApplication {

	public static void main(String[] args) {
		SpringApplication.run(XYJApplication.class, args);
	}
}
