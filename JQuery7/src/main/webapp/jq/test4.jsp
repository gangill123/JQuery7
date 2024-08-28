<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jqeury 반드시 라이브러리 추가  -->
<!-- <script src="../js/jquery-3.7.1.min.js"></script> -->
<!-- Jquery 반드시 라이브러리 추가 (CDN :Content Delivery Network)  -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<!-- 주의 : 여러개 추가 가능, 하지만 버전 충돌을 주의  -->
<script type="text/javascript">
	$(document).ready(
			function() {
				//alert(" jquery 실행(1) !");
				//요소의 내용을 수정(가져오기)-html(), text()
				var hValue = $('h2').html();
				// alert(hValue); head-0 (해당 요소중 첫번쨰 요소의 값)
				var tValue = $('h2').text();
				// alert(tValue); head-0, head-1, head-2 (해당 요소의 전체 값)

				// h2 태그에 내용 변경
				$('h2:last').html("아이티윌");
				$("h2").text("부산");

				// h2 태그에 내용 변경 (tag)
				$('h2').html("<h2> 아이티윌 </h2>");
				// -> 실제 태그를 적용해서 내용을 변경
				// $('h2').text("<h2> 아이티윌 </h2>")
				// -> 실제 태그를 적용 x 내용(문자) 그대로 변경

				// "아이티윌 부산교육센터 -h2태그" 내용 변경
				// $('h2').html("<h2>아이티윌 부산 교육 센터</h2>");		
				$('h2').html(function(idx, oldHTML) {
					// alert(idx+"/"+oldHTML);
					// return oldHTML + "부산 교육 센터";			
					return oldHTML + "<h2>부산 교육 센터</h2>";

				});

				// 요소의 내용 추가 - append() 뒤에 붙임 , prepend() 앞에 붙임

				$('body').append("<h1> 뒤쪽에 추가 append() </h1>");
				$('body').prepend("<h1> prepend() 앞쪽에 추가 </h1>");

				// 특정 태그에 내용을 추가 (태그 적용)
				$('h1').append(function(idx, data) {
					// alert(idx+"/"+data);
					return "아이티윌";
				});

				// 내용 1-5
				$('div').append(function(idx, data) {

					return idx + 1;
				})

				// 자바 스크립트 (+제이쿼리)
				// [] 배열 , {} 객체를 의미함

				// 배열- 객체를 여러개 저장 
				var contentArr = [ {
					name : "김학생",
					region : "부산"
				}, {
					name : "이학생",
					region : "서울"
				}, {
					name : "박학생",
					region : "대구"
				}, {
					name : "최학생",
					region : "제주"
				} ];

				//alert(contentArr);
				console.log(contentArr);
				// 이학생의 지역정보출력
				// ㄴ alert("지역정보 : "+contentArr[1].region);
				// 배열의 정보를 테이블에 내용을 추가
				
				$('table').append(
						"<tr><td>" + contentArr[0].name + "</td><td>"
								+ contentArr[0].region + "</td></tr>");
				$('table').append(
						"<tr><td>" + contentArr[1].name + "</td><td>"
								+ contentArr[1].region + "</td></tr>");
				$('table').append(
						"<tr><td>" + contentArr[2].name + "</td><td>"
								+ contentArr[2].region + "</td></tr>");
				$('table').append(
						"<tr><td>" + contentArr[3].name + "</td><td>"
								+ contentArr[3].region + "</td></tr>");

				for (var i = 0; i < contentArr.length; i++) {
					$('table').append(
							"<tr><td>" + contentArr[i].name + "</td><td>"
									+ contentArr[i].region + "</td></tr>");
				}

				// $.each(data, callback 함수) / $(data).each(callback함수) 함수

				$(contentArr).each(
						function(idx, item) {
							console.log(item);
							$('table').append(
									"<tr><td>" + item.name + "</td><td>"
											+ item.region + "</td></tr>");
						});

				$.each(contentArr, function(idx, item) {
					console.log(item);
					$('table').append(
							"<tr><td>" + item.name + "</td><td>" + item.region
									+ "</td></tr>");
				});

				// div  내용 1-5 1+4 까지  학생의 정보를 추가
				// ex) 내용1 - ㅇㅇㅇ/지역

				// 		$.each(contentArr,function(idx,item){
				// 			$("div").append("- "+ item.name+"/"+item.region);
				// 		});

				$("div").append(function(idx) {
					var item = contentArr[idx];
					return "- " + item.name + "/" + item.region;
				}); 
			
			
			// jquery
				
				
				
// 				$(function(){
// 					setInterval(function(){
// 						console.log("itwill");
// 					},20);
						
					
			
				$('img').css('width',200);
				$('img').css('height',200);
				
				setInterval(function(){
					$("#divimg").append($("img").first());
				},200);
				
			
			
			
			
			
			});	
			// jquery
				
				
				

			
</script>
</head>
<body>
	<h1>test4.jsp</h1>

	<h2>head-0</h2>
	<h2>head-1</h2>
	<h2>head-2</h2>


	<hr>
	<!--  내용 1 - 5   -->
	<div>내용</div>
	<div>내용</div>
	<div>내용</div>
	<div>내용</div>
	<div>내용</div>

	<hr>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>지역</th>
			<!-- <td>기타</td> -->
		</tr>
	</table>

	<hr>
	
	<div id="divimg">
	<img src="1.jpg">
	<img src="2.jpg">
	<img src="cup-2.jpg">	
	</div>
	
	
	


</body>
</html>