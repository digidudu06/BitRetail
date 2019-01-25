<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그룹웨어</title>
<link rel="stylesheet" href="resources/css/style.css" />
</head>
<body style="background: LightYellow">
	<div style="width: 100%">
		<section>
			<article>
				<h1 id="title">회원 전용 시스템</h1>
				<table id="login-outer-tab">
					<tr>
						<td colspan="5">
							<form id="login-form">
							<table>
								<tr>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
								</tr>
							</table>
								<table id="login-inner-tab">
									<tr>
										<td><input id="userid-input" name="id"
											type="text" placeholder="사원번호" tabindex="1" />
											</td>
										<td rowspan="2">
											<button id="login-btn">ACCESS</button>
										</td>
									</tr>
									<tr>
										<td>
											<span>사원번호를 입력해 주세요</span>
										</td>
									</tr>
								</table>
							</form>
							<a id="admin-link" href="#">관리자</a> | 
							<a id="join-link" href="#">회원가입</a>
						</td>
					</tr>
				</table>
			</article>
		</section>
	</div>
	<script>
		//location.assign('member.do?dest=join-form');
		
		/* window.onload = function(){
			location.assign('member.do?dest=join-form');
		} */
		var submit = document.getElementById("login-btn");
		submit.addEventListener('click', function(){
			
			var uid = document.getElementById("userid-input");
			var upass = document.getElementById("password-input");
			
			if(uid.value==="" && upass.value===""){
				alert('아이디 입력값이 없어요.');
			}else{
				alert('아이디 입력값이 있어요.');
				var form = document.getElementById("login-form");
				form.action = "member.do";
				form.method = "post";
				form.submit();
			}
		});
		
		
		 document.getElementById('join-link')
		.addEventListener('click', function(){
			alert('회원가입 클릭!');
			location.assign('member.do?dest=join-form');
		});  
		// move면 클릭 이벤트가 리스닝,
		// move()면 즉시 실행된다.
		//'click', function(){} 하면 콜백함수 호출된다.
	</script>
</body>
</html>