<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="top.jsp"/>

    <div class="grid_item" id="item1">고객 전용<br /><br />
    	<a href="#" id="cust_join" >회원가입</a><br />
    	<a href="#" id="cust_login" >로 그 인</a>
    </div>
    <div class="grid_item" id="item2">직원 전용<br /><br />
    	<a href="#" id="emp_register" >사원등록</a><br />
    	<a href="#" id="emp_access">접속승인</a>
    </div>

<jsp:include page="bottom.jsp"/>
<script>
	$('#emp_register').click(function(){
		location.assign('employee.do?cmd=move&page=register');
	});
</script>
