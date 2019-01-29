<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
/* 테이블 */
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
/* 페이지내이션 */
.center {
	text-align: center;
}

.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not (.active ) {
	background-color: #ddd;
}
</style>
</head>
<body>
	<h2>고객 list</h2>

	<table>
		<tr>
			<th>No.</th>
			<th>고객번호</th>
			<th>고객이름</th>
			<th>닉네임</th>
			<th>도시</th>
			<th>상세주소</th>
			<th>우편번호</th>
			<th>국가</th>
		</tr>
		<tr>
			<td>1</td>
			<td>123</td>
			<td>홍길동</td>
			<td>hong</td>
			<td>서울시 강남구</td>
			<td>강남대로 1</td>
			<td>12345</td>
			<td>대한민국</td>
		</tr>

	</table>
	<div style="height: 50px"></div>
	<div class="center">
		<div class="pagination">
			<a href="#">&laquo;</a> 
			<a href="#" class="active">1</a> 
			<a href="#">2</a>
			<a href="#">3</a> 
			<a href="#">4</a> 
			<a href="#">5</a> 
			<a href="#">6</a>
			<a href="#">&raquo;</a>
		</div>
	</div>
</body>
</html>
