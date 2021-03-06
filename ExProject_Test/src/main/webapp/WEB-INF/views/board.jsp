<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Board Sample</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h1>${serverTime}</h1>
<div class="container">
	<h2>샘플 게시판</h2>
	<p>본 화면을 토대로 CRUD가 가능한 게시판을 개발하면 됩니다.</p>
	<table class="table table-hover">
		<thead>
			<tr>
				<th style="width:5%;">No.</th>
				<th style="width:15%;">작성자</th>
				<th style="width:30%;">제목</th>
				<th style="width:45%;">내용</th>
				<th style="width:5%;">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="list" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${list.boardWriter }</td>
				<td>${list.boardTitle }</td>
				<td>${list.boardContents }</td>
				<td>${list.boardViewCount }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>
