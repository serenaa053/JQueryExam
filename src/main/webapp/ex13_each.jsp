<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>each : 반복문 처리(for문)</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	/* 
	each : 반복문 처리
	each(function (index, element){실행});
	여러번 반복 할 때, 현재 실행 중인 요소를 선택할 때, this를 사용한다.  
	 */
	 
	 $(document).ready(function() {
		 $("p").each(function(index) {
			$(this).attr({"id":"para-"+index});   //==>이렇게 만든것 한번에 >> <p id = "par-1"> 한국 ICT 인재 개발원 </p>
		});
		$("#btn1").click(function() {
			alert($("#para-0").text());  // getter( 가져온다. para-0번재 이름을)
		});
		$("#btn2").click(function() {
			// append => 기존 내용에 추가하기 
			$("#para-4").text("Hello JQuery"); // setter( 변경한다. parp-4번째 이름을 내가 설정한 것으로 )
			$("#para-3").append("Hello JQuery");  // 기존거 + append로 추가로 붙인다. 
		});
	});
	
</script>
</head>
<body>

	<p> 한국 ICT 인재 개발원 </p>
	<p> <b>첫번째</b> </p>
	<p> 두번째 </p>
	<p> 세번째 </p>
	<p> 네번째 </p>
	<p> 다섯번째 </p>
	<hr>
	<button id="btn1">동작 1</button>
	<button id="btn2">동작 2</button>
</body>
</html>