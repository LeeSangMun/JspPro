<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			[요청 헤더 정보의 처리]
			request
				getHeader(name) 지정한 이름의 헤더 값을 반환
			 en	getHeaders(name) 지정한 이름의 헤더 목록을 반환
			 en	getHeaderNames() 모든 헤더 이름 반환
			 	getIntHeader(name) 지정한 이름의 정수 값을 반환
			 	getDateHeader(name) 지정한 이름의 헤더 시간값을 반환
			 	
			 [헤더 정보 설정]
			 	addHeader(name, value);
			 	addIntHeader(name, value)
			 	addDateHeader(name, value)
			 	
			 	setHeader();
			 	setIntHeader()
			 	setDateHeader()
		</pre>
		
		<h3>요청 헤더 목록 조회</h3>
		<ol>
			<%
				Enumeration<String> en = request.getHeaderNames();
				while(en.hasMoreElements()) {
					String hname = en.nextElement();
					String hvalue = request.getHeader(hname);
			%>
					<li><%= hname %> : <%= hvalue %></li>
			<% 		
				}
			%>
		</ol>
		
	</div>

</body>
</html>