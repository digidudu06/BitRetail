<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<table id="wrapper">
	<tr>
		<td colspan="2">
			<jsp:include page="../home/header.jsp"/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
		</td>
	</tr>
	<tr  style="height: 300px">
		<td>
			<jsp:include page="side-menu.jsp"/>
		</td>
		<td>
		<c:choose>
			<c:when test="${dest eq 'NONE' && dest eq 'account-detail'}">
				<jsp:include page="account-detail.jsp"/>
			</c:when>
			<c:when test="${dest eq 'open-form'}">
				<jsp:include page="open-form.jsp"/>
			</c:when>
			<c:when test="${dest eq 'open-result'}">
				<jsp:include page="open-result.jsp"/>
			</c:when>
		</c:choose>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<jsp:include page="${dest eq '../home/footer.jsp'}"/>
		</td>
	</tr>
</table>
</body>
</html>