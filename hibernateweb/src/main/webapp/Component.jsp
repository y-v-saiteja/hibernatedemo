<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.*,
                    org.hibernate.*,
                    org.hibernate.cfg.Configuration,
                    com.coforge.training.Student,
                    com.coforge.training.StudentClass" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Component Mapping</title>
</head>
<body>
<h1>Component Mapping Demo</h1>
<%

 

Session sess = new Configuration().configure("hibernate.cfg.xml")
.buildSessionFactory().openSession();
Transaction t = sess.beginTransaction();

 

StudentClass studentClass = new StudentClass("IT1","BE6");
Student student = new Student("Mike", "Gupta","BE/05/12", 21, studentClass);
sess.save(student); //saved as Persistent object
out.print("student data saved successfully");
t.commit();
sess.close();
%>
</body>
</html>