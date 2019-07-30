<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<script>  
function validateemail()  
{  
	 var username = document.myform.username.value; 
	 var password = document.myform.password.value;
	 var x=document.myform.email.value;  
	 var atposition=x.indexOf("@");
	 var dotposition=x.lastIndexOf(".");  
		
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
  else if(email==null || email=="")
  { 
  alert("email cannot be blank"); 
  return false;  
  }  
	if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length)
	{  
	  alert("Please enter a valid e-mail address");  
	}
}  
</script>  
</head>
<body>
	<form name="myform"  action="Register" method="post" onclick="return validateemail();">
		<table style= "background-color: #ccffcc;">
			<tr>
				<td><h3>...Register Page...</h3></td>
			</tr>
			<tr>
				<td>UserName : </td><td><input type="text" name="username"></input></td>
			</tr>
			<tr>
				<td>Password : </td><td><input type="password" name="password"></input></td>
			</tr>
			<tr>
				<td>Email : </td><td><input type="text" name="email"></input></td>
			</tr>
			<tr>
				<td>
					<input type="submit" name="submit" value="register" style="background-color: #bfbfbf; color: white;"></input>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>