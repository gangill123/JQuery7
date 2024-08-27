<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jqeury 반드시 라이브러리 추가  -->
<!-- <script src="../js/jquery-3.7.1.min.js"></script> -->
<!-- Jquery 반드시 라이브러리 추가 (CDN :Content Delivery Network)  -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// alert(" jquery 실행(1) !");
		
		// h2 태그에 글자색 변경
		// var data = $('h2'); // h2태그 
		// alert(data);
		// console.log(data);
		
		// $('h2').css('color','orange');
		
		// 선택자 : 전체 , 태그 선택자 , id 선택자 , class 선택자
		$("*").css('color','red');
		$("h1").css('color','blue'); // 태그명
		$("#t1").css('color','green'); // #id명 (유일)
		$(".t2").css('color','yellow'); // .class명 (중복)
		
		
		$("input").css('color','black');
		// 아이디는 green
		$("#id").css('color','green');
		// 비밀번호는 blue
		$(".pw").css('color','blue');
		
		// 속성 탐색 선택자
		$("input[type=text]").css('color','orange');	
// 		$("input[type=password]").css('color','pink');	
		$("input[type^=p]").css('color','pink'); // 시작값
		
// 		$("input[type^=t]").val("ITWILL");
		var inputValue = $("input[type^=t]").val();
		alert("입력값 : "+inputValue);
		
		
		
		
	});// jquery 끝
	
	$(function(){
		// 테이블의 배경색 변경
		$("table").css('background','orange');
		// $("td").css('background','yellow');
		$('tr:first').css('background','red');
		$('tr:last').css('background','red');
		
		// 홀수행(odd) : red, 짝수행(even) : yellow
		// index 가 0 부터 시작되서 홀짝이 반대가됨
		$('tr:odd').css('background','red');
		$('tr:even').css('background','yellow');
		
		
		
	}); // jquery 끝

</script>
<style type="text/css">
/* 	h2 { */
/* 	 color: purple; */
/* 	} */

</style>

</head>
<body>
	 <h1>test2.jsp</h1>
	 	
	 	<h2 id="t1">제목1-1</h2>
	 	<h2 id="t1">제목1-2</h2>
	 	<h2 class="t2">제목2-1</h2>
	 	<h2 class="t2">제목2-2</h2>
	 	<h3 >제목3</h3>
	 	
	 	<hr>
	 	아이디 : <input type="text" name="id" id="id"> <br>
	 	비밀번호 : <input type="password" name="pw" class="pw"> <br> 
	 	
	 	<hr>
	 	
	 	<table border="1">
	 		<tr>
	 			<td>1</td><td>2</td><td>3</td>
	 		</tr>
	 		<tr>
	 			<td>1</td><td>2</td><td>3</td>
	 		</tr>
	 		<tr>
	 			<td>1</td><td>2</td><td>3</td>
	 		</tr>
	 		<tr>
	 			<td>1</td><td>2</td><td>3</td>
	 		</tr>
	 		
	 	
	 	</table>
 
 
 

</body>
</html>