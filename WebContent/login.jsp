<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="check.jsp" method="post">
	<input type="text" name="id" value="" placeholder="ID"><br>
	<input type="text" name="pw" value="" placeholder="PASSWORD"><br>
	<input type="submit" onclick="location.href='check.jsp'" value="로그인">
	<a href="register.jsp">회원 가입</a>
</form>

</html>