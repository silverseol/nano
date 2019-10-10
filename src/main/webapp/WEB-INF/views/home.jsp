<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<form action="proc" method="post">
		<input type="text" name="name"> <input type="text"
			name="message"> <input type="submit">
	</form>
	<hr />

	<input type="text" name="data1" id="data1">
	<input type="text" name="data2" id="data2">
	<button id="btn">json</button>

	<script type="text/javascript">
		$('#btn').on('click', function(){
			$.ajax({
				type : 'POST',
				dataType : 'json',/* 받는ㄷ ㅔ이터 타입 */
				url : 'dataJson',
				data : {
					data1 : $('#data1').val(),
					data2 : $('#data2').val()
				},
				success : function(result){ //컨트롤러 obj => result
					console.log(result.data1 + " : " + result.data2);
				}
			});
		});
	</script>

</body>
</html>
