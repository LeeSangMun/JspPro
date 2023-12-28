<%@page import="java.util.Date"%>
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

<script src="httpRequest.js"></script>
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
		
		처음 ex07.jsp 요청한 시간 : <%= new Date().toLocaleString() %>
		<br>
		<br>
		<input type="button" value="emp sal top5" onclick="getTop5();" />
		<br>
		<p id="demo"></p>
	
	</div>
	
	<script>
		let timer = null;
	
		function getTop5() {
			sendRequest("ex07_top5.jsp", null, callback, "GET");
			
			timer = setTimeout(getTop5, 4000)
		}
		
		function callback() {
			if (httpRequest.readyState == 4) { // 서버 요청 완료
				if (httpRequest.status == 200) { // 응답 성공
					$("#demo").html(httpRequest.responseText);
				} else {
					alert("에이작스 실패 : " + httpRequest.status);
				}
			}
		}
	</script>

</body>
</html>