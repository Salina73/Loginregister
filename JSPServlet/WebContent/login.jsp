<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<script> 
function validate()
{ 
 var username = document.form.username.value; 
 var password = document.form.password.value;
 
 if (username==null || username=="")
 { 
 alert("Username cannot be blank"); 
 return false; 
 }
 else if(password==null || password=="")
 { 
 alert("Password cannot be blank"); 
 return false; 
 } 
}
</script> 
</head>
<body>
<p id="demo"></p>

	<form name="form" action="Login" onsubmit="return validate()" method="post">
		<table style= "background-color: #ccffcc;">
			<tr>
			
				<td><h3>...Login Page...</h3></td>
			</tr>
			<tr>
				<td>UserName : </td><td><input type="text" name="username"></input></td>
			</tr>
			<tr>
				<td>Password : </td><td><input type="password" name="password"></input></td>
			</tr>
			<tr>
				<td>
					<input type="submit" name="submit" value="Login" style="background-color:#bfbfbf; color: white;"></input>
				</td>
				 <td> <input type="reset" value="Reset"></input></td>
				<td>
					<a href="Register.jsp"><input type="button" name="submit" 
					value="Register" style="background-color:#bfbfbf; color: white;"></a>
				</td>
				<td>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>