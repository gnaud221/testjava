package wheater;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 * <pre>
 * kr.co.swh.lecture.opensource.hibernate.annotation
 * HibernateAnnotationUtil.java
 *
 * ���� : ���̹�����Ʈ ������̼�
 * </pre>
 * 
 * @since : 2017. 10. 26.
 * @author : tobby48
 * @version : v1.0
 */
public class HibernateAnnotationUtil {
	static SessionFactory sessionFactory;
	static ServiceRegistry serviceRegistry;
	
	static{
		try{
			Configuration configuration = new Configuration().configure("hibernate-annotation.cfg.xml");
			

			
			//	����2
			configuration.addAnnotatedClass(Person.class);
			
			configuration.addAnnotatedClass(Result.class);
			
			
			serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
			sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		}catch(HibernateException e){
			e.printStackTrace();
		}
	}
	
	public static SessionFactory getSessionFactory(){ 
		return sessionFactory;
	}
}