<%@ page contentType="text/html;charset=gb2312" language="java"%>
<html>
<title>���ܵ���֤��</title>
<link href="CSS/style.css" rel="stylesheet" type="text/css">
 <script  language="javascript">
 function myReload(){
 	//document.createCheckCode.src="PictureCheckCode";
	document.getElementById("createCheckCode").src=document.getElementById("createCheckCode").src+"?nocache="+new Date().getTime();
 }
 </script>
  <meta http-equiv="Content-Type" content="text/html;charset=gb2312">
<body style="filter:progid:DXImageTransform.Microsoft.Gradient(startColorStr='#4F6D92',endColorStr='#ACCBE7',gradientType='0')">
<table width="100%" height="451" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center"><table width="509" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="142"><img src="images/login_top.jpg" width="509" height="142"></td>
      </tr>
      <tr>
        <td height="159" valign="top" background="images/login_bottom.jpg"><table width="350"  border="0" cellpadding="0" cellspacing="0" background="KCM/login.gif">
  <form  name="form1" method="post" action="deal.jsp" onSubmit="return check();">
  <tr>
      <td width="84">&nbsp;</td>
      <td width="57" height="28">�û�����</td>
	<td colspan="2"><input name="username" type="text" size="29"></td></tr>
	<tr>
	  <td>&nbsp;</td>
	  <td height="28">��&nbsp;&nbsp;�룺</td>
	<td colspan="2"><input name="password" type="password" size="29"></td></tr>
    <tr>
      <td height="24" align="center">&nbsp;</td>
      <td height="28" align="center">��֤�룺</td>
      <td width="33" height="24" align="left">  <input name="checkCode" title="��֤�����ִ�Сд" type="text" size="4" maxlength="4">        </td>
      <td width="176" align="left">&nbsp;<img src="PictureCheckCode" id="createCheckCode" style="border:#999999 solid 1px">
	  <a href="#" onClick="myReload()">������?��һ��</a></td>
    </tr>
    <tr>
      <td height="37" colspan="4" align="center"><input name="submit" type="submit" class="btn_bg_manageLogin" value="�� ¼">
&nbsp;
<input name="reset" type="reset" class="btn_bg_manageLogin" value="ȡ ��"></td>
    </tr>
  </form>
</table></td>
      </tr>
    </table>
    </td>
  </tr>
</table>

</body>
</html>
<script language="javascript">
  function check(){
   if(form1.username.value==""){
     alert("�������û�����");form1.username.focus();return false;
   }
   if(form1.password.value==""){
     alert("���������룡");form1.password.focus();return false;
   }
   if(form1.checkCode.value==""){
     alert("��������֤�룡");form1.checkCode.focus();return false;
   }  }
</script>












