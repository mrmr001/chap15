<%@page import="com.example.domain.Emp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE >
<html>
<head>
<meta charset="UTF-8">
<title>listall.jsp</title>
<!-- Animate  -->
<link rel="stylesheet"  href="/webjars/animate.css/3.5.2/animate.min.css">

<!-- bootstrap  -->
<link rel="stylesheet"  href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">

<!-- jquery  -->
<script type="text/javascript"></script>

<!-- bootstrap  -->
<script type="text/javascript"></script>
<style type="text/css">
tr,th,td {
	text-align: center;
}

</style>
</head>

<body>
<div class="container">
<h1>직원리스트</h1>

<table class="table table-bordered">
	<thead>
	<tr class="info">
		<th>empno</th>
		<th>ename</th>
		<th>job</th>
		<th>mgr</th>
		<th>mgr</th>
		<th>sal</th>
		<th>comm</th>
		<th>deptno</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var = "e"  items="${emps}">
	<tr>
		<td>${e.empno}</td>
		<td>${e.ename}</td>
		<td>${e.job}</td>
		<td>${e.mgr}</td>
		<td>${e.hirdate}</td>
		<td>${e.sal}</td>
		<td>${e.comm}</td>
		<td>${e.deptno}</td>
		</tr>
	</c:forEach>
	
	<tr  class="success">
	<td colspan="8"></td>
	</tr>

	</tbody>
	<tfoot>
		<%
List<Emp> list = (List<Emp>)request.getAttribute("emps");

for (Emp e : list){
%>
	<tr>
		<td><%=e.getEmpno()%></td>
		<td><%=e.getEname()%></td>
		<td><%=e.getJob()%></td>
		<td><%=e.getMgr()%></td>
		<td><%=e.getHirdate()%></td>
		<td><%=e.getSal()%></td>
		<td><%=e.getComm()%></td>
		<td><%=e.getDeptno()%></td>
		</tr>
	
<%
}
%>
	</tfoot>


</table>
</div>
<%-- 	<c:forEach var = "e"  items="${emps}"> --%>
<%-- 	${e.empno},${e.ename},${e.job},${e.mgr},${e.hirdate},${e.sal},${e.comm},${e.deptno}<br> --%>
<%-- 	</c:forEach> --%>

</body>
</html>