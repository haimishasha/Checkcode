<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>Ӣ�ġ����ֺ����Ļ�ϵĲ�ɫ��֤��</title>

<link href="Css/style.css" rel="stylesheet">
<script language="javascript" src="JS/AjaxRequest.js"></script>
<script language="javascript">

function onerror(){

	alert("���Ĳ�������");

}
function checkform(myform){

	for(i=0;i<myform.length;i++){

		if(myform.elements[i].value==""){

			alert(myform.elements[i].title+"����Ϊ�գ�");

			myform.elements[i].focus();

			return false;

		}

	}

}
//������֤��

 function myReloadStep1(){
	 
	 if(document.getElementById("checkCodeHint").innerHTML=="��������֤��"){
			
		 myReloadStep2();	//������֤��

	}

 }

 function myReloadStep2(){
	 
	var loader1=new net.AjaxRequest("getPictureCheckCode.jsp?nocache="+new Date().getTime(),deal_getCheckCode,onerror,"GET");
	
 }
 
 function deal_getCheckCode(){
	 
	 document.getElementById("showCheckCode").innerHTML=this.req.responseText;
 }
 
 /***********��֤��֤���Ƿ���ȷ*******************************/

 function checkCheckCode(inCheckCode){

	 if(inCheckCode!=""){

 		var loader=new net.AjaxRequest("checkCheckCode.jsp?inCheckCode="+inCheckCode+"&nocache="+new Date().getTime(),deal_checkCheckCode,onerror,"GET");

 	}

 }
 
 function deal_checkCheckCode(){
	 
		var hintMessage=this.req.responseText;
		
		hintMessage=hintMessage.replace(/\s/g,"");	//ȥ���ַ����е�Unicode�հ׷�
		
		switch(hintMessage){
		
		case "��������֤��!":
			alert("��������֤��!");
			break;
		
		case "���������֤�벻��ȷ!":
			alert("���������֤�벻��ȷ!");
			break;
			
		default:
			document.getElementById("checkCodeHint").setAttribute("onclick", "");
			document.getElementById("checkCodeHint").innerHTML="��֤��������ȷ";
			document.getElementById("btnLogin").removeAttribute("disabled");
		}
 }

</script>

</head>



<body>

<table width="613" height="434" border="0" align="center" cellpadding="0" cellspacing="0" background="images/loginBg.jpg">

  <tr>

    <td width="83" height="124" valign="top">&nbsp;</td>

    <td width="418" valign="top">&nbsp;</td>

    <td width="112" valign="top">&nbsp;</td>

  </tr>

  <form name="form1" method="post" action="deal.jsp" onSubmit="return checkform(form1)">
 
  <tr>

    <td height="161" valign="top">&nbsp;</td>

    <td align="center" valign="top">



<table width="90%" height="141" border="0" cellpadding="0" cellspacing="0">

  <tr>

    <td width="23%" align="center">�û�����</td>

    <td colspan="2">

      <input name="username" type="text" id="username" size="30" title="�û���"></td>

  </tr>

  <tr>

    <td align="center">��&nbsp;&nbsp;�룺</td>

    <td colspan="2"><input name="pwd" type="password" id="pwd" size="30" title="����"></td>

  </tr>

  <tr>

    <td align="center">��֤�룺</td>

    <td width="18%"><input name="checkCode" type="text" id="checkCode" title="��֤�����ִ�Сд" size="8" maxlength="4" value="${param.checkCode}" onblur="checkCheckCode(this.value)"></td>

    <td width="59%" style="padding-top:4px">
    
    <div style="position:absolute" id="showCheckCode">
    <img src="images/checkCodePicture.jpg" height="17" width="70" style="padding-top:-2px"  id="createCheckCode">
    <a href="#" id="checkCodeHint" onClick="myReloadStep1()">��������֤��</a>
    </div>
    </td>

  </tr>

  <tr>

    <td>&nbsp;</td>

    <td colspan="2"><input name="Submit" type="submit" class="btn_bg" value="��¼" id="btnLogin" disabled="disabled">

      &nbsp;

      <input name="Submit2" type="reset" class="btn_bg" value="����"></td>

  </tr>

</table>

	

	</td>

    <td valign="top">&nbsp;</td>

  </tr>

</form>

  <tr>

    <td valign="top">&nbsp;</td>

    <td valign="top">&nbsp;</td>

    <td valign="top">&nbsp;</td>

  </tr>

</table>

</body>

</html>