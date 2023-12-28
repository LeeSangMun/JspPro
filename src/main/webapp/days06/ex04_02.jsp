<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">
<link rel="stylesheet" href="/jspPro/resources/cdn-main/example.css" />
<script src="/jspPro/resources/cdn-main/example.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style>
	span.material-symbols-outlined {
		vertical-align: bottom;
	}
</style>

</head>
<body>
	<header>
		<h1 class="main">
			<a href="#">lsm Home</a>
		</h1>
		<ul>
			<li><a href="">로그인</a></li>
			<li><a href="">회원가입</a></li>
		</ul>
	</header>
	<h3>
		<span class="material-symbols-outlined">view_list</span>
		jsp days
	</h3>
	<div>
		<pre class="code">
			
		</pre>
		
		요청 URI : <%= request.getRequestURI() %><br>
		요청 URI(EL) : ${pageContext.request.requestURI }<br>
		<hr>
		<%
			// JSP request Scope 에 저장
			request.setAttribute("name", "홍길동");
		%>
		
		name : <%= request.getAttribute("name") %><br>
		name(EL) : ${ requestScope.name }<br>
		// page, request, seession, application Scope 검색
		name(EL) : ${ name }<br>
		
		<hr>
		age : <%= request.getParameter("age") %><br>
		age(EL) : ${ param.age }<br>
		
	</div>

</body>
</html>