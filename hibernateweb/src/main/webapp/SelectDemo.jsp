<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.hibernate.*,
                    org.hibernate.cfg.Configuration,
                    com.coforge.training.User,
                    java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HQL Select Query</title>
</head>
<body>
<h1>HQL Select Query</h1>
<%
Configuration cfg = new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory factory = cfg.buildSessionFactory();
Session sess= factory.openSession();
sess.beginTransaction();

Query qry=sess.createQuery("from User"); //HQL Select Query
List<User> lst=(List<User>)qry.list();
out.println("<h3>List of Employees:</h3>"+"<br>");
for(User st:lst){
	out.println(st.getId()+" "+st.getName()+" "+st.getEmail()+"<br>");
}
    out.println("<br/");
    
    String hql= "select U.name from User U";
    qry=sess.createQuery(hql);
    List<String> list1 = qry.list();
    out.println("List of Names::"+"<br>");
    for (String st : list1) {
        out.println(st +"<br>");
    }
%>
</body>
</html>