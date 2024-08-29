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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.js"></script>
<!-- 주의 : 여러개 추가 가능, 하지만 버전 충돌을 주의  -->

<script type="text/javascript">

	$(document).ready(function(){
		// alert(" jquery 실행(1) !");
		
		
	
		$("h2").css("background","orange");
		$("div").css("background","yellow");
		
		
		// 태그 요소에 효과 적용 
		// https://www.w3schools.com/jquery/jquery_hide_show.asp
		//$("h2").hide();
		$("h2").on("click mouseover",function(){
			// $("h2").hide();
			// $('h2').toggle();
// 			$(this).next().toggle("slow",function(){
// 				// alert("toggle 효과 끝")
// 				// 콜백함수
// 			});
//			$(this).next().slideToggle();
			$(this).next().fadeToggle();
			
		});
		
		$('p').on("click",function(){
			$("h2").show();
		});
		
		$("#div1").css("width",50);
		$("#div1").css("height",50);
		$("#div1").css("background","blue");
		
		//#div1 클릭시 마다 가로,세로크기를 증가
		$("#div1").click(function(){
			
		//클릭한 시점의 가로,세로 길이
		var width = $(this).css("width");
		var height = $(this).css("height");
		
		// 가로,세로 길이를 증가 (+10)
// 		$(this).css("width", parseInt(width)+10);
// 		$(this).css("height", parseInt(height)+10);
		
		$(this).animate({
			"width":parseInt(width) +10,
			"height":parseInt(height) +10,
			
		});
		
	});
		//https://bxslider.com/
		 $(document).ready(function(){
		        $(".slider").bxSlider();
		      });
	
}); // jquery
	</script>
</head>


<body>
	<div class="slider">
      <div>I am a slide.</div>
      <div>I am another slide.</div>
    </div>
	
	
	<h1>test6.jsp</h1>
	
	<h1> 효과, 애니메이션 </h1>
	
	<h2> 열기,닫기1 </h2>
	<div>
		<h2>제목 (열기,닫기1) </h2>
		<p>내용</p>
	</div>
	
	<h2> 열기,닫기2 </h2>
	<div>
		<h2>제목 (열기,닫기2)</h2>
		<p>내용2</p>
	</div>
	
	<hr>
	
	<div id="div1">
	</div>
	
	
	

</body>
</html>