<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body>
	<div style="width: 100%">
		<form id="register_form">
			<div class="grid_container" id="join-form">
				<div class="grid_item" id="register_item1">사원번호</div>
				<div class="grid_item" id="register_item2"><input type="text" name="employeeId" id="employeeId"/></div>
				
				<div class="grid_item" id="register_item3">이름</div>
				<div class="grid_item" id="register_item4"><input type="text" name="name" id="name"/></div>
							
				<div class="grid_item" id="register_item11"><input type="submit" name="admin" id="confirm_btn" value="확인" /></div>
				
				<div class="grid_item" id="register_item12"><input type="submit" id="cancle_btn" value="취소" /></div>
			</div>
		</form>
	</div>
	<script>
		$('#confirm_btn').click(function(){
			$('#register_form')
			.attr('action', '${context}/employee.do').submit();
			
		});
	</script>
</body>
</html>