<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 폼</title>
<!-- jquery lib는 default_decorator.jsp에서 등록 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(function(){
	
	// 패턴과 메시지는 regExUtil.js에 포함되어 있습니다. -> default_decorator.jsp에 등록
	// writeForm안에 데이터가 넘어갈때(submit) 데이터 testing
	$("#writeForm").submit(function(){
		// 데이터를 검사하는 regExUtil.js 파일 사용한 데이터 검사
		// 제목 - 데이터가 유효하지 않으면(!) 더 이상 진행하지 않고 false를 리턴한다.
		if(!inputDataCheck(title_RegEx, "#title", title_err_msg))
			return false;
		// 내용 - 데이터가 유효하지 않으면(!) 더 이상 진행하지 않고 false를 리턴한다.
		if(!inputDataCheck(content_RegEx, "#content", content_err_msg))
			return false;;
		// 작성자 - 데이터가 유효하지 않으면(!) 더 이상 진행하지 않고 false를 리턴한다.
		if(!inputDataCheck(writer_RegEx, "#writer", writer_err_msg))
			return false;

	});
	
});
</script>
</head>
<body>
	<h1>글쓰기</h1>
	<!-- url 작성시 *.do :  spring 3.1까지의 기본 url에 *.do pattern 기본으로 사용 -->
	<!-- 많은 데이터를 넘길때 form -->
	<form action="write.do" method="post" id="writeForm">
	<div class="container">
		<input name="perPageNum" value="${param.perPageNum }" type="hidden">
		<div class="form-group">
			<label for="title">제목</label>
			<!-- 입력한 데이터의 앞뒤 공백문자는 제거(trim())
    			 id, class : 화면 컨트롤을 위해서(빠른 선택), name : 넘어가는 데이터 이름 -->
<!-- 			<input type="text" class="form-control" id="title" name="title" -->
<!-- 				required="required" pattern="^.{4,100}$" -->
<!-- 				title="제목을 4~100 글자 사이로 입력하셔야 합니다."> -->
			<input type="text" class="form-control" id="title" name="title"
				title="제목을 4~100 글자 사이로 입력하셔야 합니다.">
		</div>
		<div class="form-group">
			<label for="content">내용</label>
<!-- 			<textarea class="form-control" rows="5" id="content" -->
<!-- 			 name="content" required="required" ></textarea> -->
			<textarea class="form-control" rows="5" id="content"
			 name="content"></textarea>
		</div>
		<div class="form-group">
			<label for="writer">작성자</label>
			<!-- 입력한 데이터의 앞뒤 공백문자는 제거(trim())
    			 id, class : 화면 컨트롤을 위해서(빠른 선택), name : 넘어가는 데이터 이름 -->
<!-- 			<input type="text" class="form-control" id="writer" name="writer" -->
<!-- 				required="required" pattern="^.{2,10}$" -->
<!-- 				title="작성자는 4~10 글자 사이로 입력하셔야 합니다."> -->
			<input type="text" class="form-control" id="writer" name="writer"
				autocomplete="off"
				title="작성자는 4~10 글자 사이로 입력하셔야 합니다.">
		</div>
		<!-- <div class="form-group">
			<label for="pw">비밀번호:자신글 확인용</label>
			<input type="text" class="form-control" id="pw" name="pw"
				autocomplete="off"
				title="비밀번호는 4~20 글자 사이로 입력하셔야 합니다." pattern="^.{4,20}$">
		</div> -->
		<!-- input, select, textarea : 입력 항목 만들기 : 생략 -->
		<button>등록</button>
		<button type="reset">다시입력</button>
		<button class="cancelBtn" type="button">취소</button>
	</div>
	</form>
</body>
</html>