<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String id1=request.getParameter("id");
   String pw=request.getParameter("pw");
   
   String name;
   
   
   Class.forName("oracle.jdbc.driver.OracleDriver");
   String url="jdbc:oracle:thin:@localhost:1521:xe";
   String id="poqwer233", pwd="1234";
   Connection con = DriverManager.getConnection(url, id, pwd);
   String sql="select * from members";
   PreparedStatement ps = con.prepareStatement(sql);
   ResultSet rs = ps.executeQuery();
   %>
   <% 
   while(rs.next()){
   
	   name=rs.getString("name");   
	   if(id1.equals(rs.getString("id"))){
	      if(pw.equals(rs.getString("pwd"))){%>
	         <script>
	         <%out.print("alert('");%><%= name%> <%out.print(" 님 반갑습니다.')");%>
	         location.href="main.jsp";
	         </script>
	         <% 
	         session.setAttribute("id1",rs.getString("id"));
	         session.setAttribute("pwd1",rs.getString("pwd"));
	         session.setAttribute("name1",rs.getString("name"));
	         session.setAttribute("addr1",rs.getString("addr"));
	         session.setAttribute("tel1",rs.getString("tel"));
	         %>
	      <%}else{%>
	      	 <script>
	         <% out.print("alert('비밀번호가 다릅니다')");%>
	         location.href="login.jsp";
	         </script>
	      <%break;
	      }
	   }%>
      
    <script>
    <%out.print("alert('일치하는 아이디가 없습니다')");%>
    location.href="login.jsp";
    </script>   
   <% break;
   }%>
   
     
   
</body>
</html>