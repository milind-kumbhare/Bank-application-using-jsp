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
PreparedStatement ps=con.prepareStatement("select accountno,name,amount,address,mobile_no from hdfc where accountno=? and name=? and password=?");

ps.setInt(1,accountno);
ps.setString(2,name);
ps.setString(3,password);


ResultSet rs=ps.executeQuery();

	
	/*if(rs.next()) {*/
		ResultSetMetaData rss=rs.getMetaData();
		out.print("</fieldset>"+"<a href='Bhome.jsp' ><font size=6>Home</font></a>&nbsp;&nbsp;&nbsp;&nbsp;");
		out.print("<a href='Close.jsp' ><font size=6>CloseAc</font></a>&nbsp;&nbsp;&nbsp;&nbsp;");
		out.print("<a href='Contact.jsp' ><font size=6>ContactUS</font></a>&nbsp;&nbsp;&nbsp;&nbsp;");
		out.print("<a href='AboutUs.jsp' ><font size=6>AboutUs</font></a>&nbsp;&nbsp;&nbsp;&nbsp;"+"</fieldset>"+"<br>"+"<br>"+"<br>");

		out.print("Welcome "+ name);
		out.print("<table border='1'>");
		int n=rss.getColumnCount();
		for(int i=1;i<=n; i++)
		out.println("<td><font color=blue size=3>"+"<br>"+rss.getColumnName(i));
		out.println("<tr>");
		while(rs.next())
		{
		for(int i=1; i<=n;i++)
		 out.println("<td><br>"+rs.getString(i));
		out.println("<tr>");
		}
		out.println("</table></body></html>");
	//response.sendRedirect("BalanceNx.jsp");
		/*	}
			else {
				out.print("Invalid Name or Password or Account_no");
				//response.sendRedirect("Balance.jsp");
			}
	*/
	


con.close(); 
}
catch (Exception e)
{
out.print(e);	
} %>
</body>
</html>