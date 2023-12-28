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
			<c:choose>
				<c:when test="${empty auth }">
					<li><a href="/jspPro/days07/member/logon.jsp">로그인</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="/jspPro/days07/member/logout.jsp">[${auth}]로그아웃</a></li>
				</c:otherwise>
			</c:choose>
			<li><a href="/jspPro/days07/member/addmember.jsp">회원가입</a></li>
		</ul>
	</header>
	<h3>
		<span class="material-symbols-outlined">view_list</span>
		jsp days
	</h3>
	<div>
		<pre class="code">
			
		</pre>
		
		<h2>회원관리</h2>
		
	</div>

</body>
</html>