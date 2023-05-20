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
String confirm_pass=request.getParameter("cpsw");
double amount=Double.parseDouble(request.getParameter("amt"));
String address=request.getParameter("add");
String mobile_no=request.getParameter("mob");


try 
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sathyaorcl","admin");
PreparedStatement ps=con.prepareStatement("insert into hdfc values(?,?,?,?,?,?,?)");

ps.setInt(1,accountno);
ps.setString(2,name);
ps.setString(3,password);
ps.setString(4,confirm_pass);
ps.setDouble(5,amount);

ps.setString(6,address);
ps.setString(7,mobile_no);


int i=ps.executeUpdate();
out.print(i +" Record inserted successfully"+"<br>"+"<br>"+"<br>");
out.print("</fieldset>"+"<a href='Bhome.jsp' ><font size=6>Home</font></a>&nbsp;&nbsp;&nbsp;&nbsp;");
out.print("<a href='Close.jsp' ><font size=6>CloseAc</font></a>&nbsp;&nbsp;&nbsp;&nbsp;");
out.print("<a href='Contact.jsp' ><font size=6>ContactUS</font></a>&nbsp;&nbsp;&nbsp;&nbsp;");
out.print("<a href='AboutUs.jsp' ><font size=6>AboutUs</font></a>&nbsp;&nbsp;&nbsp;&nbsp;"+"</fieldset>");



con.close(); 
}
catch (Exception e)
{
out.print(e);	
} %>
</body>
</html>
</html>