<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">
<link rel="stylesheet" href="/jspPro/resources/cdn-main/example.css" />
<script src="/jspPro/resources/cdn-main/example.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

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
		<span class="material-symbols-outlined">view_list</span> jsp days
	</h3>
	<div>
		<pre class="code">
			ex01.jsp?lat=&lng= -> ex01_02.jsp
		</pre>
		
		<div id="googleMap" style="width: 100%; height: 400px"></div>
		<script>
			function myMap() {
				var lat = <%= request.getParameter("lat")%>;
				var lng = ${param.lng};
				
				var mapCenter = new google.maps.LatLng(lat, lng);
				var mapCanvas = document.getElementById("googleMap");
				
				var mapOptions = {
					center : new google.maps.LatLng(lat, lng),
					zoom : 15
				};
				var map = new google.maps.Map(mapCanvas, mapOptions);
			
				// 쌍용교육센터의 위치를 표시하는 마커(지도의 객체)
				// - [마커], 폴리라인, 다각형, 원, 직사각형, 정보창 등등
				var marker = new google.maps.Marker({
					position : mapCenter
					// , animation : google.maps.Animation.BOUNCE
					, icon : "pinkball.png"
				});
				marker.setMap(map);
				
				// 2. 정보창 표시
				// var message = "<a href='http://www.sist.co.kr'>(주)쌍용교육센터</a>";
				var message = "<a href='http://www.sist.co.kr'><img alt='lezhin.com 로고' src='//img-s-msn-com.akamaized.net/tenant/amp/entityid/BBFwET1.img'></a>";
				var infoWindow = new google.maps.InfoWindow({
					content : message
				});
				infoWindow.open(map, marker);
			}
		</script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB0pIM6xWPk0gxc57rXFQuaY8YCyv0ojq8&callback=myMap"></script>

	</div>

</body>
</html>