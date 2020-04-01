<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import=" java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String id="poqwer233", pwd="1234";
Connection con = DriverManager.getConnection(url, id, pwd);
String sql="select * from members";
PreparedStatement ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery();
   
%>


<h1>회원들만의 페이지.</h1><br><br>

<table border="1">
<tr>
   <th><b>아이디</b></th>
   <th><b>비밀번호</b></th>
   <th><b>이름</b></th>
   <th><b>주소</b></th>
   <th><b>전화번호</b></th>
</tr>

<%while(rs.next()){ %>
<tr>
   <td><%=rs.getString("id") %></td>
   <td><%=rs.getString("pwd") %></td>   
   <td><%=rs.getString("name") %></td>
   <td><%=rs.getString("addr") %></td>
   <td><%=rs.getString("tel") %></td>
</tr>
<%} %>

</table><br>

<input type="button" onclick="location.href='logout.jsp'" value="로그아웃">
<input type="button" onclick="location.href='showInfo.jsp'" value="계정정보">

</body>
</html>