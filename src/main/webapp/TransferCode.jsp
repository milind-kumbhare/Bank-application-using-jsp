<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>
<%

	int accountno=Integer.parseInt(request.getParameter("accno"));
	String name=request.getParameter("uname");
	String password=request.getParameter("psw");
	int tac_no=Integer.parseInt(request.getParameter("taccno"));
	double amt=Double.parseDouble(request.getParameter("amt"));
	
	double amount=0;
	
	
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sathyaorcl","admin");
		
		PreparedStatement ps=con.prepareStatement("select amount from hdfc where accountno=? and name=? and password=?");
		 
		ps.setInt(1,accountno);
		ps.setString(2,name);
		ps.setString(3,password);
		
		  ResultSet rs=ps.executeQuery(); 
		 
		
	
	while (rs.next()) {
	 amount = rs.getDouble("amount");
	}
	if(amount>amt){
	
	amount=amount-amt;
	
	

		
	PreparedStatement ps1=con.prepareStatement("update hdfc set amount=? where accountno=? and name=? and password=?");
		
		
		ps1.setDouble(1,amount);
		ps1.setInt(2,accountno);
		ps1.setString(3,name);
		ps1.setString(4,password);
		
				
		int i=ps1.executeUpdate();
		
		
	
		PreparedStatement ps2=con.prepareStatement("update hdfc set amount=amount+? where accountno=?");
		ps2.setDouble(1,amt);
		ps2.setInt(2,tac_no);
		
		
		
		int i1=ps2.executeUpdate();
		
		if(i1==1 && i==1)
		{	
			out.print("</fieldset>"+"<a href='Bhome.jsp' ><font size=6>Home</font></a>&nbsp;&nbsp;&nbsp;&nbsp;");
		out.print("<a href='Close.jsp' ><font size=6>CloseAc</font></a>&nbsp;&nbsp;&nbsp;&nbsp;");
		out.print("<a href='Contact.jsp' ><font size=6>ContactUS</font></a>&nbsp;&nbsp;&nbsp;&nbsp;");
		out.print("<a href='AboutUs.jsp' ><font size=6>AboutUs</font></a>&nbsp;&nbsp;&nbsp;&nbsp;"+"</fieldset>"+"<br>"+"<br>"+"<br>");
			out.print("The target account balance is "+amount +"reduced balance is "+amt);			
		}
		else{
			out.print("Incorrect Details");
		}
	}
	
		else{
			out.print("Insufficient balance"+"<br>"+"<br>"+"<br>");
			out.print("</fieldset>"+"<a href='Bhome.jsp' ><font size=6>Home</font></a>&nbsp;&nbsp;&nbsp;&nbsp;");
			out.print("<a href='Close.jsp' ><font size=6>CloseAc</font></a>&nbsp;&nbsp;&nbsp;&nbsp;");
			out.print("<a href='Contact.jsp' ><font size=6>ContactUS</font></a>&nbsp;&nbsp;&nbsp;&nbsp;");
			out.print("<a href='AboutUs.jsp' ><font size=6>AboutUs</font></a>&nbsp;&nbsp;&nbsp;&nbsp;"+"</fieldset>");
		}
	
	    con.close();
		
	}	
	catch(Exception ex)
	{
		out.print(ex);
	}

	
%>
	
		
