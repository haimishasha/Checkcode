<%@ page contentType="text/html; charset=GBK" language="java"  %>
<jsp:useBean  id="encode" class="com.hss.Checkcode.Encode" scope="request"/>
<%
	request.setCharacterEncoding("GBK");
	String checkCode = request.getParameter("inCheckCode").toString();
	checkCode = encode.encodeByMD5(checkCode);	//����MD5����
	if ("".equals(checkCode) || checkCode == null) {
		out.println("��������֤��!");
	} else {
		if (!checkCode.equals(session.getAttribute("randCheckCode"))) {
			out.println("���������֤�벻��ȷ!");
		}
	}
%>