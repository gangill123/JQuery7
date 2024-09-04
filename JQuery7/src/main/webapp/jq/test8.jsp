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

<!-- 주의 : 여러개 추가 가능, 하지만 버전 충돌을 주의  -->

<script type="text/javascript">
	$(document).ready(function(){
		// alert(" test8.jsp ");
		
		// 비동기방식 ajax()사용해서 JASON 데이터 타입정보 가져오기
		$.ajax({
			url : "json1.jsp",
			dataType : "json",
			success : function(data){
				alert("jason1.jsp 페이지를 다녀옴 ");
				// alert(data);
				console.log(data);
				// $('body').append(data);
				$('body').append(data.name+"<hr>");
				$('body').append(data.age+"<hr>");
				$('body').append(data.gender+"<hr>");
			}
		});
		//////////////////////////////////////////
// 		$.getJSON("주소",function(){
// 			// 성공시 처리 동작
// 		});
		
		$.getJSON("json2.json",function(object){
			alert("getJSON 사용 데이터를 가져옴");	
			// $('body').append(object.name); // 
			console.log(object); // {"name" : "ITWILL", "age" : 20, "gender" : "N" }
			$(object).each(function(key,value){
				$('body').append(key+" : "+value+"<hr>");
			});
			
		});
		
		// 비동기 방식으로 json3.json 데이터를 가져와서
		// resultDiv 공간에 정보 출력
		
		$.getJSON("json3.json",function(data){
			alert("getJSON3 사용 데이터를 가져옴");
			console.log(data);
			$(data).each(function(idx,item){
				// console.log(idx+"/"+item);
				// console.log(item);
				$('#resultDiv').append(item.name+"/"+item.age+"/"+item.gender+"<hr>");
				// $('table').append("<tr> <td>"+item.name+"</td><td>"+item.gender+"</td><td>"+item.age+"</td></tr>");
				
						
			});
			
		});
	
		// 비동기 방식으로 DB에 저장된 정보를 가져와서 표에 출력
		
		$.ajax({
			url : "list.jsp",
			success : function(data){
				alert(data);
				// $('body').append(data);
				// addMember 테이블에 요소 추가
				
				
				
			}
			
		})
		
	
	
	
	
	
	
	
	
	}); // jquery

</script>
</head>
<body>
	<h1>test8.jsp</h1>
	
	<div id="resultDiv"></div>
	<table border="1" >
		<tr>
			<td>이름</td>
			<td>성별</td>
			<td>나이</td>		
		</tr>
	
	
	</table>
		<table border="1" id="dbMember">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이메일</td>		
		</tr>
	</table>

</body>
</html>