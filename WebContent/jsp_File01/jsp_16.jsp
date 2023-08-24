<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h2>jsp:forward 액션태그 실습</h2>
 
 <form action="view.jsp">
 <%-- method속성을 생략하면 기본값은 get방식이다. --%>
 보고 싶은 페이지 :
  <select name="code">
   <option value="A">A페이지</option>
   <option value="B">B페이지</option>
   <option value="C">C페이지</option>
  </select>
  <input type="submit" value="이동" >
 </form>
</body>
</html>