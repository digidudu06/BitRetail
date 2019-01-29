<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../home/head.jsp"/>

<body>
<div class="grid_container">
		<div class="grid_item" id="item1"><jsp:include page="../home/header.jsp" /></div>
		<div class="grid_item" id="item2">
			<c:choose>
				<c:when test="${compo eq 'pre_navi'}">
					<jsp:include page="../home/pre-navi-bar.jsp" />
				</c:when>
				<c:otherwise>
					<jsp:include page="../home/post-navi-bar.jsp" />
				</c:otherwise>
			</c:choose>
		</div>
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
		<div class="grid_item" id="item6"><jsp:include page="../home/footer.jsp" /></div>
	</div>
</body>
</html>