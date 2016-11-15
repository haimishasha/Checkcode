<%@ page contentType="text/html; charset=GBK" language="java"  %>
<%
	request.setCharacterEncoding("GBK");
	
	if("".equals(request.getParameter("username")) || "".equals(request.getParameter("pwd"))){
		out.println("请输入用户名或密码！");
	}else{
		if(!("mr".equals(request.getParameter("username")) && "mrsoft".equals(request.getParameter("pwd")))){
			out.println("您输入的用户名或密码不正确！");
		}
	}  
%>