<%@ page contentType="text/html; charset=GBK" language="java"  %>
<jsp:useBean  id="encode" class="com.hss.Checkcode.Encode" scope="request"/>
<%
	request.setCharacterEncoding("GBK");
	String checkCode = request.getParameter("inCheckCode").toString();
	checkCode = encode.encodeByMD5(checkCode);	//进行MD5加密
	if ("".equals(checkCode) || checkCode == null) {
		out.println("请输入验证码!");
	} else {
		if (!checkCode.equals(session.getAttribute("randCheckCode"))) {
			out.println("您输入的验证码不正确!");
		}
	}
%>