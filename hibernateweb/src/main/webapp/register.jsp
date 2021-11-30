<%@page import="com.coforge.training.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
</head>
<body>
<jsp:useBean id="u" class="com.coforge.training.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
   int i=UserDAO.register(u);
	
	if(i!=0)
	{
		out.println("Register Successfully");
	}
%>

</body>
</html>