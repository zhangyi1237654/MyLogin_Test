<%@page import="java.io.PrintWriter"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	response.setContentType("text/html;charset=utf-8");//设置响应的MIME类型

	out.println("<h1>response内置对象</h1>");
	out.println("<hr>");
	//out.flush();
	
	PrintWriter outer = response.getWriter();//获得输出流对象
	outer.println("Hello,我是输出流outer对象");
	//response.sendRedirect("reg.jsp");//请求重定向
	//请求重定向
	//response.sendRedirect("request.jsp");
	//请求转发
	request.getRequestDispatcher("request.jsp").forward(request, response);
%>
