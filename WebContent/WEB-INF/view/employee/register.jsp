<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../home/top.jsp"/>
<link rel="stylesheet" href="${css}/employee/register.css" />
<link rel="stylesheet" href="${css}/navi_bar.css" />

<div class="grid_item" id="navi"><jsp:include page="employee_navi.jsp"/></div>

<div class="grid_item" id="item1">사원등록</div>

<div class="grid_item" id="item2">
<div id="grid_form">
	<form id="register_form">
		<div class="grid_container">
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
</div>
<script>
	$('#confirm_btn').click(function() {
		var employeeId = $('#employeeId').val();
		var name = $('#name').val();
		var manager = $('#manager').val();
		var birthDate = $('#birthDate').val();
		
		$("#register_form")
		.attr('action', '${context}/employee.do').submit();
		
	});
</script>
