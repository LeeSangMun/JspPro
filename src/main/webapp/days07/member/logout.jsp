<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// session.removeAttribute("auth");
	session.invalidate();
	
	String location = "/jspPro/days07/ex03.jsp";
	response.sendRedirect(location);
%>