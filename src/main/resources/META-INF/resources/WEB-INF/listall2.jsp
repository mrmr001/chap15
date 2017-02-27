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
</head>
<body>
<h1>직원리스트2</h1>
<table class="table table-bordered">
	<thead>
	<tr>
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
<%
List<Emp> list = (List<Emp>)request.getAttribute("emps");

for (Emp e : list){
%>
<!-- 	<tr> -->
<%-- 		<td><%=e.getEmpno()%></td> --%>
<%-- 		<td><%=e.getEname()%></td> --%>
<%-- 		<td><%=e.getJob()%></td> --%>
<%-- 		<td><%=e.getMgr()%></td> --%>
<%-- 		<td><%=e.getHirdate()%></td> --%>
<%-- 		<td><%=e.getSal()%></td> --%>
<%-- 		<td><%=e.getComm()%></td> --%>
<%-- 		<td><%=e.getDeptno()%></td> --%>
<!-- 		</tr> -->
	
<%
}
%>


	</tbody>


</table>

null=<%=list.get(0).getEname()%>
	

</body>
</html>