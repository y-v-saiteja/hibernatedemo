package com.coforge.training.hibernatedemo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
       Configuration cfg=new Configuration();
       cfg.configure("hibernate.cfg.xml");
       
       SessionFactory sf=cfg.buildSessionFactory();
       Session session=sf.openSession();
       
       Transaction t=session.beginTransaction();
        
       employee e1=new employee();
       
       e1.setId(101);
       e1.setFirstname("tej");
       e1.setLastname("sai");
       e1.setDept("technical");
       e1.setSalary(20000);
       
       session.save(e1);
       
       t.commit();
       System.out.println("data successfully saved to database");
       session.close();
       sf.close();
       
       
       
    }
}
