<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>효과 : Animation</title>
<style type="text/css">
	div{ background-color: skyblue; width: 100px; height: 100px; position: absolute;}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//$(선택자).animate({params}, speed, callback);
		// params 는 보통 애니메이션 할 CSS 특성을 정의
		// div의 position은 보통 absolute, fixed, relative 가능
		// static은 사용 불가!!! 
		// callback 함수는 애니메이션 실행효과가 100% 완료된 후 callback 함수 실행된다.
		
		// 1/1000초다 ! 3000이면 3초이다.
		//$("#btn").click(function() {
		//	$("#div").animate({left:'250px'}, 3000); // 왼쪽에서 오른쪽으로 이동 250px 이 끝 위치이다.
		//	$("#div").animate({left:'250px', top:'250px'}, 3000); // 왼쪽에서 대각선 오른쪽로 이동 250px 이 끝 위치이다.
		// });
		
		var i = 0;
		$("#btn").click(function(){
			if (i%2 == 0) {
				$("#div").animate({
					width:"250px", 
					height:"250px", 
					opacity:"0.1"}, 3000, function() { ////  투명도 와 속도, 콜백함수 
						alert("늘이기 성공");
					});  
			}else {
				$("#div").animate({
					width:"100px", 
					height:"100px", 
					opacity:'1.0'}, 3000, function() {
						alert("줄이기 성공");
					});
			}
			i++;
		});
	});
</script>

</head>
<body>
	<button id="btn"> 애니메이션 시작 </button>
	<hr>
	<div id="div"></div>
</body>
</html>