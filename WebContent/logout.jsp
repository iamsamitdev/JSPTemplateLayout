<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// Clear session
	session.removeAttribute("session_login");

	//Redirect ไปหน้า login.jsp
	response.sendRedirect("login.jsp");
%>