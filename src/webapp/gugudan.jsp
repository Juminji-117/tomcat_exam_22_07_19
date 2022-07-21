<%--line 5: new Rq(res,res);에서 res와 req는 이미 있던 변수명이라 에러났던 것--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ll.exam.Rq" %>
<%
Rq rq = new Rq(request, response);
int dan = rq.getIntParam("dan", 0);
int limit = rq.getIntParam("limit", 0);
%>

<h1><%=dan%>단</h1>

<% for ( int i = 1; i <= limit; i++ ) { %>
<div><%=dan%> * <%=i%> = <%=dan * i%></div>
<% } %>