<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%int accountno=Integer.parseInt(request.getParameter("accno"));
String name=request.getParameter("uname");
String password=request.getParameter("psw");

try 
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sathyaorcl","admin");
PreparedStatement ps=con.prepareStatement("select * from hdfc where accountno=? and name=? and password=?");

ps.setInt(1,accountno);
ps.setString(2,name);
ps.setString(3,password);

ResultSet rs=ps.executeQuery();
	if(rs.next()) {
		//out.println("<a href=\"Bhome.jsp");
		
		  out.print("welcome "+name+" Your Account no '1' has closed."  );

	}
	else {
		out.print("Invalid UserName or Password");
	}
	con.close(); 
	}
	catch (Exception e)
	{
		out.print(e);	
	}


%>
</body>
</html>