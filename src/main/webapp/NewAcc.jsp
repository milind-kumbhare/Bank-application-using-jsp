<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Account Page</title>

<style>
table{
border:2px solid grey;
        border-radius:10px;
        width:25%;
        background:white;
        }
        
        form{
        background:-webkit-linear-gradient(left, #a445b2, #fa4299);
         height:100%;
        
        }
                body{
        background:-webkit-linear-gradient(left, #a445b2, #fa4299);
         height:100%;
        
        }

</style>
<body>
<center>
<form action="NewAccCode.jsp" method="post">
<h1 style="color:green"><font size=15>HDFC BANK</font></h1>
<h2 style="color:red"><font size=9>EXTRAORDINARY SERVICES</font></h2>

<fieldset>
<a href="Bhome.jsp" ><font size=6>Home</font></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Newacc.jsp" ><font size=6>NewAccount</font></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Balance.jsp" ><font size=6>Balance</font></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Deposit.jsp" ><font size=6>Deposit</font></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Withdraw.jsp" ><font size=6>Withdraw</font></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Transfer.jsp" ><font size=6>Transfer</font></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="CloseAc.jsp" ><font size=6>CloseA/c</font></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="AboutUs.jsp" ><font size=6>AboutUs</font></a>&nbsp;&nbsp;&nbsp;&nbsp;
</fieldset>
<table>
<tr>
<th colspan="2"><h3 style="color:red"><font size=5>Open Account Form</font></th></tr>
<tr>
<td><label>Account Number:</label></td>
<td>
<input type="text" name="accno">
</td></tr>
<tr>
<td><label>Name:</label></td>
<td>
<input type="text" name="uname">
</td></tr>
<tr>
<td><label>Password:</label></td>
<td>
<input type="password" name="psw">
</td></tr>
<tr>
<td><label>Confirm Password:</label></td>
<td>
<input type="password" name="cpsw">
</td></tr>
<tr>
<td><label>Amount:</label></td>
<td>
<input type="text" name="amt">
</td></tr>
<tr>
<td><label>Address:</label></td>
<td><textarea name="add"></textarea>
</td></tr>
<tr>
<td><label>Mobile Number:</label></td>
<td>
<input type="text" name="mob">
</td></tr>
        <tr>
       
        
        <td><input type="submit" value="Submit"></td>
        
       
        <td>
        
        <input type="reset" value="clear" /></td>
        </tr>
        </center>

</body> 
</html>