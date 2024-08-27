<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--jqeury 반드시 라이브러리 추가  -->
<script src="../js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		alert(" jquery 실행(1) !");
	});
	
	$(function(){
		alert(" jquery 실행(2) !")
	});
	
	jQuery(document).ready(function(){
		alert(" jquery 실행(3) !");
	});
	
	jQuery(function(){
		alert(" jquery 실행(4) !")
	});
	
	
// function 이름(){
	
// }	
	
	
	alert(" 안녕하세요! javaScript 실행! ");
</script>
</head>
<body>
	<h1>test1.jsp</h1>
	


</body>
</html>