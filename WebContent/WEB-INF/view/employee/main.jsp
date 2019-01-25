<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../home/head.jsp"/>
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
		<td id="side-menu">
			<c:if test="${dset eq 'join-form'}">
				<jsp:include page="register.jsp"/>
			</c:if>
			<jsp:include page="side-menu.jsp"/>
		</td>
		<td>

			
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<jsp:include page="../home/footer.jsp"/>
		</td>
	</tr>
</table>
</body>
</html>