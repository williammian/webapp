package br.com.wm.webapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class WebappApplication {
    
	public static void main(String[] args) {
		SpringApplication.run(WebappApplication.class, args);
	}
		
}

//@SpringBootApplication
//public class WebappApplication extends SpringBootServletInitializer {
//
//    @Override
//    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
//        return application.sources(WebappApplication.class);
//    }
//    
//	public static void main(String[] args) {
//		SpringApplication.run(WebappApplication.class, args);
//	}
//		
//}