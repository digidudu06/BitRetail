<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

</head>
<body>
	<div id="grid_form">
		<form id="register_form">
			<div class="grid_container" id="join-form">
				<div class="grid_item" id="register_item1">사원번호</div>
				<div class="grid_item" id="register_item2"><input type="text" name="employeeId" id="employeeId"/></div>
				
				<div class="grid_item" id="register_item3">이름</div>
				<div class="grid_item" id="register_item4"><input type="text" name="name" id="name"/></div>
				
				<div class="grid_item" id="register_item5">매니저</div>
				<div class="grid_item" id="register_item6"><input type="text" name="manager" id="manager"/></div>
				
				<div class="grid_item" id="register_item7">생년월일</div>
				<div class="grid_item" id="register_item8"><input type="text" name="birthDate" id="birthDate"/></div>
				
				<div class="grid_item" id="register_item9">세부사항</div>
				<div class="grid_item" id="register_item10"><input type="text" name="notes"/></div>
				
				<div class="grid_item" id="register_item11"><input type="submit" id="confirm_btn" value="사원등록" /></div>
				
				<div class="grid_item" id="register_item12"><input type="submit" id="registeret_btn" value="등록취소" /></div>
				
			</div>
		</form>
	</div>
	<script>
		$('#confirm_btn').click(function() {
			var employeeId = $('#employeeId').val();
			var name = $('#name').val();
			var manager = $('#manager').val();
			var birthDate = $('#birthDate').val();
			
			$("#register_form")
			.attr('action', '${context}/employee.do').submit();
			
			/* if(employeeId===''||name===''||manager===''||birthDate===''){
				alert('필수 입력 값입니다.');
			}else{
				alert('사번 : '+employeeId);
				// var form = $("#register_form");
				// document.form.action ="${context}/employee.do";  자바 스크립트
				// form.submit();
				$("#register_form")
				.attr('action', '${context}/employee.do').submit(); //제이쿼리
			} */
		});
	</script>


	<!-- emploueeId, manager, name, birthDate, photo, notes -->