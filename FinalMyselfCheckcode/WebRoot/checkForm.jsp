<%@ page contentType="text/html; charset=GBK" language="java"  %>
<%
	request.setCharacterEncoding("GBK");
	
	if("".equals(request.getParameter("username")) || "".equals(request.getParameter("pwd"))){
		out.println("�������û��������룡");
	}else{
		if(!("mr".equals(request.getParameter("username")) && "mrsoft".equals(request.getParameter("pwd")))){
			out.println("��������û��������벻��ȷ��");
		}
	}  
%>