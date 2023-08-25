<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
 function check(){
	 if($.trim($('#title').val())==''){
		 alert('글제목을 입력하세요!');
		 $('#title').val('').focus();
		 return false;
	 }
	 
	 if($.trim($('#content').val())==""){
		 alert('글내용을 입력하세요!');
		 $('#content').val("").focus();
		 return false;
	 }
 }
</script>
</head>
<body>
 <h2>간단한 제목과 내용 입력폼</h2>
 <form method="post" action="board_ok.jsp" onsubmit="return check();">
 제목:<input name="title" id="title" size="36" ><br><br>
 글내용:<textarea name="content" id="content" rows="10" cols="36"></textarea>
 <hr>
 <input type="submit" value="전송" >
 <input type="Reset" value="취소" onclick="$('#title').focus();" >
 </form>
</body>
</html>