<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:useBean  id="encode" class="com.hss.MD5Checkcode.Encode" scope="request"/>
<%
	String checkCode = request.getParameter("checkCode").toString();
	checkCode = encode.encodeByMD5(checkCode);	//����MD5����
	if ("".equals(checkCode) || checkCode == null) {
		out.println("<script>alert('��������֤�룡');window.location.href='index.jsp';</script>");
	} else {
		if (!checkCode.equals(session.getAttribute("randCheckCode"))) {
			out.println("<script>alert('���������֤�벻��ȷ��');history.back(-1);</script>");
		}
	}
	if("".equals(request.getParameter("username")) || "".equals(request.getParameter("password"))){
		out.println("<script>alert('�������û��������룡');window.location.href='index.jsp';</script>");
	}else{
		if(!("mr".equals(request.getParameter("username")) && "mrsoft".equals(request.getParameter("password")))){
			out.println("<script>alert('��������û��������벻��ȷ��');window.location.href='index.jsp';</script>");
		}
	}
%>
<html>
<head>
    <meta content="text/html; charset=gb2312" http-equiv="Content-Type" />
    <link href="CSS/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="778" height="275" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="115" colspan="2"><table width="778"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="784" height="115" align="center" valign="top"><img src="images/logo.jpg" width="778" height="115"></td>
  </tr>
</table></td>
  </tr>
  <tr>
    <td width="190"><a href="#" onClick="show_div('menu1')" ><img src="images/left_top.GIF" width="186" height="33"></a>
<table width="186" height="331" border="0" cellpadding="0" cellspacing="0" class="tableBorder_bold">
  <tr>
    <td height="323" align="center" valign="top">
	<!--������Ϣ����-->
	<a href="#"><img name="Imgmenu1" border="0"
     src="images/menu_1.JPG" align="ABSMIDDLE" width="165" height="26"></a>
	<Div id="menu1">
  <table width="165" border="0" cellpadding="0" cellspacing="0" class="tableBorder">
   <tr><td width="18%" height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
       <td width="82%"><a href="#">�ͻ���Ϣ����</a></td>
  </tr>
  <tr><td height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
      <td><a href="#">��Ʒ��Ϣ����</a></td>
  </tr>
  <tr><td height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
      <td><a href="#">��Ӧ����Ϣ����</a></td>
  </tr>
  <tr><td height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
      <td><a href="#">��Ʒ��Ϣ��ѯ</a></td>
  </tr>
  <tr><td height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
      <td><a href="#">�ͻ���Ϣ��ѯ</a></td>
  </tr>
  <tr><td height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
      <td><a href="#">��Ӧ����Ϣ��ѯ</a></td>
  </tr>
 </table>
</Div>
<!--������-->
<a href="#" ><img name="Imgmenu3" align="ABSMIDDLE"
    src="images/menu_3.JPG" border="0" width="165" height="28"></a><br>
<!--���۹���-->
<a href="#"><img name="Imgmenu4" align="ABSMIDDLE"
    src="images/menu_4.JPG" border="0" width="165" height="28"></a><br>
<a href="#"><img name="Imgmenu5" align="ABSMIDDLE"
    src="images/menu_5.JPG" border="0" width="165" height="28"></a><br>

<a href="#"><img name="Imgmenu6" align="ABSMIDDLE"
    src="images/menu_6.JPG" border="0" width="165" height="28"></a><br>
<a href="index.jsp" ><img name="Imgmenu7" align="ABSMIDDLE"
    src="images/menu_7.JPG" border="0" width="165" height="28"></a><br>
	</td>
  </tr>
</table></td>
    <td width="588">&nbsp;</td>
  </tr>
</table>
</body>
</html>
