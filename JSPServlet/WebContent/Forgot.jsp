<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
</head>
<body>

	<form action="Forgot" method="post">
		<table style= "background-color: #ccffcc;">
		
			<tr><td>Current Password</td><td><input type="password" name="password" ></td></tr>
			
			<tr><td>New Password</td><td><input type="password" name="password1"></td></tr>
			
			<tr><td>Confirm Password</td><td><input type="password" name="password2"></td></tr>
			<tr><td><input type="submit" value="Change Password"></td></tr>
		</table>
	</form>
</body>
</html>
