<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	if(request.getParameter("submit") != null){
		// out.write("OK");
		// รับค่าจากฟอร์ม input
		String getEmail = request.getParameter("email");
		String getPassword = request.getParameter("password");
		
		if(getEmail.equals("admin@email.com") && getPassword.equals("1234")){
			// สร้างตัวแปร session
			session.setAttribute("session_login", getEmail);
			// Redirect ไปหน้า dashboard
			response.sendRedirect("dashboard.jsp");
		}else{
			out.write("<div class='alert alert-danger'>Login fail!</div>");
		}
	}
%> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%@include file="include/stylecss.jsp"%>
</head>
<body>

	<!-- Header -->
	<%@include file="include/header.jsp"%>
	
	<div class="container py-3">
		<form action="login.jsp" method="post">
		  <div class="mb-3">
		    <label for="email" class="form-label">Email address</label>
		    <input type="email" class="form-control" id="email" name="email" aria-describedby="email">
		  </div>
		  <div class="mb-3">
		    <label for="password" class="form-label">Password</label>
		    <input type="password" class="form-control" id="password" name="password">
		  </div>
		  <input type="submit" name="submit" class="btn btn-primary" value="Login">
		</form>
	</div>
	
	<!-- Footer -->
	<%@include file="include/footer.jsp"%>
	
	<!--  JavaScript -->
	<%@include file="include/script.jsp"%>

</body>
</html>