<html>
<head>
<title>Register Here</title>
<style>
input[type=text], [type=password]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>
<h2>Registration Form</h2>
<div>
<form action="register.jsp" method="post">  
Name:<input type="text" name="name" placeholder="Enter Your Name"/><br><br/>  
Password:<input type="password" name="password" placeholder="Enter Your Password"/><br><br/>  
Email ID:<input type="text" name="email" placeholder="Enter Your Email Id"/><br><br/>  
<input type="submit" value="Register"/> 
  
</form>  
</div>
</body>
</html>
