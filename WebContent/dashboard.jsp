<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// ตรวจว่ามี session หรือมไม่
	if(session.getAttribute("session_login") == null){
		// Redirect ไปหน้า login.jsp
		response.sendRedirect("login.jsp");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<%@include file="include/stylecss.jsp"%>
</head>
<body>

	<!-- Header -->
	<%@include file="include/header.jsp"%>
	
	<div class="container py-3">
		<h1>Dashbaord</h1>
		<p>option isn’t advised because it will leave your credentials visible in your terminal history, which any program on your computer can actually read.</p>
	</div>

	<!-- Footer -->
	<%@include file="include/footer.jsp"%>
	
	<!--  JavaScript -->
	<%@include file="include/script.jsp"%>
</body>
</html>