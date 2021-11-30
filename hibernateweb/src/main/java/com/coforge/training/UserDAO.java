package com.coforge.training;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

//Data Access Layer
public class UserDAO {
   public static int register(User u)
   {
	   int i=0;
       
       Configuration cfg=new Configuration();
       cfg.configure("hibernate.cfg.xml");
       SessionFactory sf=cfg.buildSessionFactory();
       Session session=sf.openSession();  // physical connection with db is created
            
     Transaction t=session.beginTransaction();
    
     i=(Integer)session.save(u); // save to db
    
     t.commit();
     session.close();
     return i;
   }
}
