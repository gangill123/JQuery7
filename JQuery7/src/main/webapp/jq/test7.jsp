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
		
		
		// 동기방식 : 서버의 정보와 동일한 형태로 처리되는 방식
		//            -> 사용자의 요청이 처리가 완료될때까지 코드 실행이 멈춤(대기)
		//            -> 페이지 이동하는 형태 (주로 발생)
		
		
		
		// 비동기 방식 (AJAX) : 서버의 정보와 다른 형태로 처리되는 방식
		// 					  -> 사용자의 요청이 처리 완료될때를 기다리지않고 바로 바로처리
		// 					  -> 페이지 이동 X (한 화면에서 처리), 
		//                       정보 불러오기(파일 업로드/다운로드, 이메일 전송)
		//                       화면의 전환없이 데이터를 처리
		
		// AJAX(Asyncronous JavaScript And XML) : 비동기 방식의 JavaScript, XML
		
		// $.ajax(); : 데이터를 서버에 HTTP 통신 방식(GET,POST)으로 정보 전달
// 		$.ajax({
// 			url : "전송 페이지(액션페이지)",
// 			type : "전송 방식(get(기본),post)",
// 			data : "전송할 데이터(파라메터)",
// 			dataType : "요청한 데이터 타입(html(기본),xml,text,json)",
// 			success : function(data){ data : 전달받은 정보
// 				성공 시 수행할 동작
// 			};
// 			error : function(data){ data : 실패정보
// 				실패 시 수행할 동작
// 			},
// 			complete : function(){
// 				ajax 동작이 완료 시 수행하는 동작
// 			}
			
// 		});
// 			동기 방식으로 sting.jsp 조회
//		location.href = "string1.jsp";
		// 비동기 방식으로 sting.jsp 조회
		
		$("body").css("background","red");
		
		$.ajax({
			url : "string1.jsp",
			type : "get",
			dataType : "html",
			success : function(data){
				alert("비동기방식으로 string1.jsp 갔다옴 !");
				// alert(data);
				$("body").append(data);
			},
			error : function(data){
				alert("비동기방식으로 실행에 문제가 있음");
				console.log(data);
				//alert(data);
			}
			
		});
		
		
		
		// string2.jsp 비동기 방식 데이터 처리
		// 정보 전달 + 처리된 결과 가져오기
		$.ajax({
			url : "string2.jsp",
			type : "get",
			// data : name = "itwill",(x) {속성값} 사용해서 객체 형태로 연결
			data : {name :"itwill", birth : 931125},			
			success : function(data){
				alert("string2.jsp 페이지 다녀옴");
				$('body').append("<hr> 정보 전달 + 처리된결과 가져오기")
				$('body').append(data);
				
			}
		});
		
		
		
		
		// XML() (eXtensible Markup Language) : 확장 가능한 마크업 언어
		// -> HTML형태 처럼 태그를 사용해서 데이터를 저장하는 언어
		// -> 다양한 플랫폼에서 사용가능한 타입(복잡한 데이터 구조 표현가능)
		
		
		// xml1.jsp or xml2.xml 비동기 방식으로 데이터 처리
		$.ajax({
			url : "xml2.xml",
			type : "get",
			success : function(data){
				alert("xml1.jsp 비동기 방식으로 페이지 다녀옴 ");
				$("body").append("<hr> xml 비동기 방식으로 처리 ");
				// alert(data);
				console.log(data);
				//$("body").append(data);
				
				$(data).find("person").each(function(){
					var name =	$(this).find("name").text();
					var tel =	$(this).find("tel").text();
					var gender = $(this).find("gender").text();
					// alert(name);
					$("body").append(" 이름 : "+name+", 전화번호 : "+tel+", 성별 : "+gender);					
				});
			}
			
		});
		
		
		
		// jtbc RSS 서비스정보를 비동기 방식으로 처리
		$.ajax({
			url : "https://fs.jtbc.co.kr/RSS/sports.xml",
			success : function(data){
				alert("JTBC 뉴스 정보에 접근 성공!");
				console.log(data);
				// id = news에 출력
				$(data).find("item").each(function(){
					var title = $(this).find("title").text();					
					var link = $(this).find("link").text();
//					$("#news").append(link+"<hr>");
//					$("#news").append(title+"<hr>");
					
					
					// var tag = "<a href= '"+link+"'>"+title+"</a>";					
// 					var tag = "";
// 					tag += "<a href= '"+link+"'> 
// 					tag += title;					
// 					tag += "</a>";		
					// `` (백틱)
					var tag = `
						<a href= "link"> ${title} </a>
						`;
						
						$("#news").append(tag+"<hr>");
						
				
				});
//					$("#news").append(tag+"<hr>"); x
				
			}
		})
		// ajax()의 대표적인 리턴타입 : html,xml,jason
		
		// jason 데이터 타입
		// jason (JavaScript Object Notation) : 자바스크립트 객체 표현식
		// -> 개방형 표준 데이터 포맷의 일부(ex) xml, csv)
		// 장점
		//    1) 단순 텍스트 형태, 속성 - 값 쌍으로 구성 "속성 : 값 " 
		//    2) 데이터 크기가 작음 -> 전송속도 빠름
		//    3) 특정 언어, 플랫폼에 독립적이다.
		//    4) 대부분의 언어, 플랫폼, 브라운저 에는 JASON(파서가 포함되어 있어야함)
		// 단점
		//    1) 문법에 예민함('' .. , 문법 체크 필요)
		//    2) 자바스크립트 기반이기 때문에 js코드가 포함될수 있음 (취약점)
		
		// JASON 문법
		// - 데이터 표현
		//   ㄴ  "속성 (KEY) : 값(VALUE)"
		// - 객체 표현
		//   ㄴ { "속성 (KEY) : 값(VALUE)"............... }
// 			{
// 				"속성 (KEY) : 값(VALUE)"
// 				"속성 (KEY) : 값(VALUE)"
				
// 			} 

// 배열 표현 - >  { }
//  { "속성 (KEY) : 값(VALUE)", "속성 (KEY) : 값(VALUE)", [] , ......}
// *속성은 ""으로 묶어서 선언 , 값은 타입에 따라서 변경
// JASON 타입의 자료형
//  - 정수 : 단순한 숫자 표현 가능 (2,8 16 진수는 표현 X )
//  - 실수 :  소주점이하 자리수를 포함하는 숫자 표현
//		   : (고정소수점 1.4000, 부동 소수점 2.5E )
//  -  논리형 (boolean) : true ,false
// null; 
//  - 문자열 : String 타입데이터 저장 ""를 사용해서 저장한 타입
//  - 배열		
		
// - 날짜 정보(datatype 지원x ) -> 문자형태 ("2024-09-24"),숫자형태(3221332312)		

		
	
}); // jquery
	</script>
</head>


<body>
	
	
	
	<h1>test7.jsp</h1>


	<h1> 비동기 방식 (AJAX)</h1>
	
	<hr>
	
	<div id="news"></div>
	
	

</body>
</html>