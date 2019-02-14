<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../home/top.jsp"/>

<div class="grid_item" id="navi"></div>
<div class="grid_item" id="item3">로그인</div>
<div class="grid_item" id="item4"><jsp:include page="side-menu.jsp" /></div>
<div class="grid_item" id="item5">
	<c:choose>
		<c:when test="${compo eq 'access'}">
			<jsp:include page="access.jsp"/>
		</c:when>
		<c:otherwise>
			<jsp:include page="../customer/customer_list.jsp"/>
		</c:otherwise>
	</c:choose>
</div>

<jsp:include page="../home/bottom.jsp"/>
<script>

</script>