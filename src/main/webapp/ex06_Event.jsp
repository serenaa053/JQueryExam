<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<script type="text/javascript">

	// 마우스 이벤트 : click(on, bind), dblclick, mouseover, mouseout
	// 키보드 이벤트 : keypress, keyup, keydown
	// form 이벤트 : submit, change, focus
	$(document).ready(function() {
		// click(클릭)
		// 동적 처리가 불가능
	//	$("#p1").click(function() {alert("클릭 성공"); });
	
		// 주체가 되는 부모 속성의 이벤트를 물려받아서 지정 선택자에게 이벤트 연결
		// $("상위 선택자").on("click", "하위 선택자", function() {alert("클릭 성공2"); });
	//	$("#p1").on("click", function() {alert("클릭 성공2"); });
	
		// 동적처리 
	//	$("#p1").bind("click", function() {alert("클릭 성공3"); });
		
		// dblclick(더블클릭)
	//	$("#p1").dblclick("click", function() {alert("더블 클릭 성공"); });
		
		// mouseover, mouseout (마우스 포인트 올렸을 때, 벗어날 때)
		// attr => 속성 설정  // 자바스크립트에서 this는 호출한 객체를 말한다. 여기서는 img
		$("#img").mouseover(function() {
			$(this).attr("src","images/pic_bulbon.gif");
		});
		
		$("#img").mouseout(function() {
			$(this).attr("src","images/pic_bulboff.gif");
		});
		
		// keyup : 글자를 입력하면 
		$("#name").keyup(function() {
			// alert("누르셨네요");
			var name = $(this).val();  // 입력된 값을 name으로 받겠다.
			alert(name);
		});
		
		// 체크박스 : chage(), select(), radio
		$("#chk").change(function() {
		//	var str = $("#addr").val();  // addr을 가져와서 = getter
		//	$("#addr2").val(str) // addr2를 addr로 변경하자 = setter
		
			var str = $("#addr").val();
			if($(this).is(":checked")){  // is(":checked") => 체크 상태니? 라는 의미
				$("#addr2").val(str);
			}else {
				$("#addr2").val(""); // 체크 되지 않으면 아무것도 없게
			}
		});
		
		
		$("#pwd2").keyup(function() {
			if ($("#pwd").val() === $("#pwd2").val()) {
				$("#s1").html("<b>암호가 맞네요</b>");
			}else {
				$("#s1").html("<b>암호가 틀리네요</b>");  // html()은 괄호안에 태그가 먹힌다. text는 태그 안먹힘.
			}
		});
		
		
	});
	
</script>
</head>

<body>
	<p><span id="p1"> 이벤트 처리 </span> </p>
	<p><img id="img" src="images/pic_bulboff.gif"></p>
	<p><input type="text" name="name" id="name"></p>
	<hr>
	
	<p>주소 : <input type="text" name="addr" id="addr"></p>
	<p><input type="checkbox" id="chk">상동</p>
	<p>주소 : <input type="text" name="addr2" id="addr2"></p>
	<hr>
	
	<p>비번 : <input type="password" name="pwd" id="pwd"> </p>
	<p>비번확인 : <input type="password" name="pwd2" id="pwd2"> </p>
	<p><span id="s1"></span> </p>

</body>
</html>




