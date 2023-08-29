<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
 function check(){
	 if($.trim($('#gname').val()) == ''){
		 alert('글쓴이를 입력하세요!');
		 $('#bname').val('').focus();
		 return false;
	 }
	 
	 if($.trim($('#gtitle').val()) == ''){
		 alert('글제목을 입력하세요!');
		 $('#btitle').val('').focus();
		 return false;
	 }
	 
	 if($.trim($('#gcont').val()) == ''){
		 alert('글내용을 입력하세요!');
		 $('#bcont').val('').focus();
		 return false;
	 }
 }
</script>
</head>
<body>
<%--
  문제 겸 과제물) 1. 방명록 글쓴이, 글제목, 글내용을 입력할 수 있는 폼 입력창 guest_write.jsp를 작성하고,유효성
  검증 처리를 jQuery,javascript를 사용해서 처리한다.
  
  			 2. net.daum.vo패키지에 네임 피라미터이름 gname,gtitle,gcont와 일치하는 변수명을 가진
  			 데이터 저장빈 클래스 GuestVO.java를 작성한다.
  			 GuestVO.java의 변수명으로는 
  			 private int gno;//방명록 번호
  			 private String gname;//글쓴이
  			 private String gtitle;//글제목
  			 private String gcont;//글내용
  			 private String gdate;//등록날짜
  			 
  			 3.다음과 같은 컬럼구조를 갖는 tbl_guest25테이블을 작성한다.
  			 컬러명      자료형	크기          제약조건
  			 gno	number   38      primary key
  			 gname  varchar2 100     not null
  			 gtitle varchar2 200     not null
  			 gcont  varchar2 4000    not null
  			 gdate  date             null
  			 
  			 4.시퀀스는 bno_seq25를 그대로 사용한다.
  			 
  			 5.jsp:useBean 액션태그를 사용해서 방명록 저장하는 guest_ok.jsp를 작성한다.
  			 
  			 6.방명록 목록보기 guest_list.jsp를 작성한다.
  			 
  			 7.net.daum.dao패키지에 오라클 db연동 클래스 Guest25DAOImpl.java를 작성해서
  			 방명록 저장 메서드 public int insertGuest(GuestVO g){}를 작성하고,
  			 방명록 목록 메서드 public List<GuestVO> getGuList(){}를 각각 작성한다.
 --%>
 
 <form method="post" action="guest_ok.jsp" onsubmit="return check();">
   <table border="1">
    <tr>
     <th colspan="2">jsp 방명록 글쓰기폼 문제풀이</th>
    </tr>
    <tr>
     <th>글쓴이</th>
     <td><input name="gname" id="gname" size="14" ></td>
         <%-- type속성을 생략하면 기본값으로 text이다. text는 한줄 입력박스를 만든다. --%>
    </tr>
    
    <tr>
     <th>글제목</th>
     <td><input name="gtitle" id="gtitle" size="36" ></td>
    </tr>   
    
    <tr>
     <th>글내용</th>
     <td>
      <textarea name="gcont" id="gcont" rows="10" cols="36"></textarea>
     </td>
    </tr>
    
    <tr>
     <th colspan="2">
      <input type="submit" value="방명록저장" >
      <input type="reset" value="취소" onclick="$('#gname').focus();" >
     </th>
    </tr>
   </table>
  </form>
</body>
</html>