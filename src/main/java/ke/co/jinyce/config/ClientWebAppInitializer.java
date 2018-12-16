package ke.co.jinyce.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class ClientWebAppInitializer implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {

		AnnotationConfigWebApplicationContext webContext = new AnnotationConfigWebApplicationContext();
		webContext.register(DatabaseConfig.class);
		webContext.register(ClientWebMVCConfig.class);
		webContext.setServletContext(servletContext);
		ServletRegistration.Dynamic reg = servletContext.addServlet("gnyce",
				new DispatcherServlet(webContext));
		reg.setLoadOnStartup(1);
		reg.addMapping("*.action");
		reg.addMapping("/");

	}

}
