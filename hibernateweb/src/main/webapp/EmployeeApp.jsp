<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,
                    org.hibernate.*,
                    org.hibernate.cfg.Configuration,
                    com.coforge.training.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Collection mapping</title>
</head>
<body>
     <h1> Hibernate Collection Mapping Demo</h1>
     <%
         Session sess = new Configuration().configure("hibernate.cfg.xml") .buildSessionFactory().openSession();
       Transaction t = sess.beginTransaction();

 

Employee employee = new Employee();
employee.setEmployeeId(1003);
employee.setEmployeeName("Mike");

 

Set<String> phoneNumbers = new HashSet<String>();
phoneNumbers.add("85888");
phoneNumbers.add("1256678");
phoneNumbers.add("5444353");

 

employee.setPhoneNumbers(phoneNumbers);

 

sess.save(employee);

out.print("Employee data saved successfully");
t.commit(); 
%>
</body>
</html>