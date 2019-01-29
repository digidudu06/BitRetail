<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="head.jsp"/>

<body>
	<div class="grid_container">
		<div class="grid_item" id="item1"><jsp:include page="header.jsp" /></div>
		<div class="grid_item" id="item2">
			<c:choose>
				<c:when test="${compo eq 'pre_navi'}">
					<jsp:include page="pre-navi-bar.jsp" />
				</c:when>
				<c:otherwise>
					<jsp:include page="post-navi-bar.jsp" />
				</c:otherwise>
			</c:choose>
		</div>
		<div class="grid_item" id="item3">로그인</div>
		<div class="grid_item" id="item4"><jsp:include
				page="side-menu.jsp" /></div>
		<div class="grid_item" id="item5">
			<c:choose>
				<c:when test="${compo eq 'pre_navi'}">
					<jsp:include page="../employee/register.jsp" />
				</c:when>
				<c:otherwise>
					<jsp:include page="../employee/access.jsp" />
				</c:otherwise>
			</c:choose>
		</div>
		<div class="grid_item" id="item6"><jsp:include page="footer.jsp" /></div>
	</div>
</body>
<script>

</script>
</html>
<!-- 
<table id="wrapper">
	<tr>
		<td colspan="2">
			
		</td>
	</tr>
	<tr>
		<td colspan="2">
			
		</td>
	</tr>
	<tr  style="height: 300px">
		<td style="width: 30%">
			
		</td>
		<td>
			<div id="content">
				
			</div>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			
		</td>
	</tr>
</table>
</body>
</html> -->