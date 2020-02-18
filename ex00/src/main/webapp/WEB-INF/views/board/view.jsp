<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글보기</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	.modal-header, .modal-header h4, .close{
		background: black;
		color: white;
		font-size: 30px;
	}
</style>

<script type="text/javascript">
$(function(){
	// 버튼 이벤트 처리
	$("#deleteBtn").click(function(){
		if(!confirm("정말 삭제하시겠습니까?"))
			return false; // a tag의 href를 취소 시킨다. -> location.href를 변경하는 태그 a
		
	});

});
</script>

</head>
<body>
<h1>게시판 글보기</h1>
<div class="container">
<table class="table">
<tr>
	<th>글번호</th><td>${dto.no}</td>
</tr>
<tr>
	<th>제목</th><td>${dto.title}</td>
</tr>
<tr>
	<th>내용</th><td>${dto.content}</td>
</tr>
<tr>
	<th>작성자</th><td>${dto.writer }</td>
</tr>
<tr>
	<th>조회수</th><td>${dto.hit}</td>
</tr>
<tr>
	<td colspan="2">
		<a href="update.do?no=${dto.no }&page=${param.page }&perPageNum=${param.perPageNum}&key=${param.key}&word=${param.word}"><button>수정</button></a>
		<a href="delete.do?no=${dto.no }&perPageNum=${param.perPageNum }"
		 id="deleteBtn"><button>삭제</button></a>
		<a href="list.do?page=${param.page }&perPageNum=${param.perPageNum }&key=${param.key }&word=${param.word}"><button>목록</button></a>
	</td>
</tr>
</table>
</div>
</body>
</html>