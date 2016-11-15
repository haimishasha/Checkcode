<%@ page contentType="text/html; charset=gb2312" pageEncoding="GBK" language="java" import="java.sql.*" errorPage="" %>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<title>Ajax实现无刷新的彩色验证码</title>

<link rel="stylesheet" href="Css/style.css" />

<script src="JS/check.jsp"></script>

<style type="text/css">

<!--

#showCheckCode {

	position:absolute;

	left:0px;

	top:-91px;

	width:207px;

	height:90px;

	z-index:1;

	background-color:#666666;

}

-->

</style>

<script language="javascript" src="JS/AjaxRequest.js"></script>

<script language="javascript">

function onerror(){

	alert("您的操作有误！");

}

//生成并显示验证码

function getCheckCodeFun(showCheckCode,checkCode){

	showCheckCode.style.display='';

	if(document.getElementById("resultMessage").innerHTML=="温馨提示：单击验证码输入框，获取验证码！验证码区分大小写"){
	
		getCheckCode1(showCheckCode,checkCode);	//生成验证码

	}

	checkCode.focus();

}

//生成验证码

function getCheckCode1(showCheckCode,checkCode){

	var loader1=new net.AjaxRequest("getPictureCheckCode.jsp?nocache="+new Date().getTime(),deal_getCheckCode,onerror,"GET");

	showCheckCode.style.display='';

	checkCode.focus();

}

function deal_getCheckCode(){
	
	document.getElementById("showCheckCode").innerHTML=this.req.responseText;

}

//隐藏验证码显示框

function showCheckCodeClear(){

	showCheckCode.style.display='none';

}

/***********验证验证码是否正确*******************************/

function checkCheckCode(inCheckCode){

	if(inCheckCode!=""){

		var loader=new net.AjaxRequest("checkCheckCode.jsp?inCheckCode="+inCheckCode+"&nocache="+new Date().getTime(),deal_checkCheckCode,onerror,"GET");

	}

}

function deal_checkCheckCode(){

	var h=this.req.responseText;

	h=h.replace(/\s/g,"");	//去除字符串中的Unicode空白符

	if(h==1){

		document.getElementById("resultMessage").removeChild(document.getElementById("resultMessage").childNodes[0]);

		document.getElementById("resultMessage").appendChild(document.createTextNode(" "));

		document.getElementById("messageImg").src="images/dui2.gif";
		document.getElementById("resultMessage").removeChild(document.getElementById("resultMessage").childNodes[0]);

		document.getElementById("resultMessage").appendChild(document.createTextNode("恭喜您，验证码正确！"));

		document.getElementById("btn_Submit").disabled=false;

	}else{

		document.getElementById("messageImg").src="images/cuo2.gif";

		document.getElementById("resultMessage").removeChild(document.getElementById("resultMessage").childNodes[0]);

		document.getElementById("resultMessage").appendChild(document.createTextNode("您输入的验证码不正确！"));

	}

}

</script>

</head>



<body onBlur="showCheckCodeClear()">

<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">

  <tr>

    <td width="22" background="images/bg_left.gif">&nbsp;</td>

    <td width="760">

<table width="760" height="646" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">

  <tr>

    <td height="126" align="center"><%@include file="top.jsp"%></td>

  </tr>

  <tr>

    <td height="446" valign="top">

    <table width="100%" height="164" border="0" cellpadding="0" cellspacing="0" class="tableBorder_LRB">

      <tr>

        <td height="49" colspan="6" background="images/reply_navigate.gif">&nbsp;</td>

        </tr>

      <tr>

        <td width="5%" height="143"  onClick="showCheckCodeClear()">&nbsp;</td>

        <td colspan="4" align="center" valign="top">

		<form name="form1" method="post" action="">

		<table width="100%" height="383" border="0" cellpadding="0" cellspacing="0">

          <tr onClick="showCheckCodeClear()">

            <td width="14%" height="36" align="center">留言人：</td>

            <td colspan="3">

              <input name="author" type="text" id="author" size="30" value="">

              *            </td>

          </tr>

          <tr onClick="showCheckCodeClear()">

            <td height="107" align="center">表&nbsp;&nbsp;情：</td>

            <td colspan="3"><INPUT name="face" type=radio class="noborder" value=0 checked>

              <IMG height=20

            src="images/face/face0.gif" width=20 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=1>

              <IMG height=19

            src="images/face/face1.gif" width=19 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=2>

              <IMG height=20

            src="images/face/face2.gif" width=20 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=3>

              <IMG height=20

            src="images/face/face3.gif" width=20 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=4>

              <IMG height=20

            src="images/face/face4.gif" width=20 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=5>

              <img height=20

            src="images/face/face5.gif" width=20 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=6>

              <IMG height=20

            src="images/face/face6.gif" width=20 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=7>

              <img height=20

            src="images/face/face7.gif" width=20 align=middle border=0><br>

              <INPUT name="face" type=radio class="noborder" value=8>

              <IMG height=20

            src="images/face/face8.gif" width=20 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=9>

              <IMG height=20

            src="images/face/face9.gif" width=20 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=10>

              <IMG height=20

            src="images/face/face10.gif" width=20 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=11>

              <IMG height=20

            src="images/face/face11.gif" width=20 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=12>

              <IMG height=20

            src="images/face/face12.gif" width=20 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=13>

              <IMG height=20

            src="images/face/face13.gif" width=20 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=14>

              <IMG height=20

            src="images/face/face14.gif" width=20 align=middle border=0>

              <INPUT name="face" type=radio class="noborder" value=15>

              <img height=20

            src="images/face/face15.gif" width=20 align=middle border=0><br></td>

          </tr>

          <tr onClick="showCheckCodeClear()">

            <td height="38" align="center">Email：</td>

            <td colspan="3"><input name="email" type="text" id="email" size="72"></td>

          </tr>

          <tr onClick="showCheckCodeClear()">

            <td height="160" align="center">留言内容：</td>

            <td colspan="3"><textarea name="content" cols="70" rows="10" class="wenbenkuang" id="content"></textarea>

              *</td>

          </tr>



          <tr>

            <td height="42" align="center" valign="bottom" onClick="showCheckCodeClear()">验证码：</td>

			

            <td width="6%"><div style="position:absolute"><div id="showCheckCode" style="display:none; padding:3px" align="center" ><img  src="images/checkCodePicture.jpg" id="createCheckCode" width="200" height="60"><a href="#" style="color:#EEEEEE" onClick="getCheckCode1(showCheckCode,checkCode)">看不清?换一个</a></div>

			

            <input name="checkCode" type="text" id="checkCode" size="6" value="" title="单击验证码输入框，获取验证码" onClick="getCheckCodeFun(showCheckCode,checkCode);"  onBlur="checkCheckCode(this.value)">

			  </div>			  </td>

            <td width="6%" valign="bottom" id="resultCheckCode" onClick="showCheckCodeClear()">&nbsp;&nbsp;&nbsp;<img id="messageImg" src='images/tishi2.gif' width='16' height='16'>

			</td>

            <td width="74%" valign="bottom" id="resultCheckCode" onClick="showCheckCodeClear()">&nbsp;

              <div id="resultMessage">温馨提示：单击验证码输入框，获取验证码！验证码区分大小写</div></td>

          </tr>

          <tr onClick="showCheckCodeClear()">

            <td height="42" align="center">&nbsp;</td>

            <td colspan="3" >

              <input name="btn_Submit" id="btn_Submit" type="button" class="btn_grey" value="保存" onClick="check(form1)" disabled="disabled">

              &nbsp;&nbsp;

              <input name="Submit2" type="reset" class="btn_grey" value="重置">

&nbsp;&nbsp;			  </td>

          </tr>		  

        </table>

		</form>		</td>

        <td width="6%" onClick="showCheckCodeClear()">&nbsp;</td>

      </tr>

    </table>

    </td>

  </tr>

  <tr>

    <td align="center" class="tableBorder_LR"><%@include file="copyright.jsp"%></td>

  </tr>

</table>

    <td width="19" background="images/bg_right.gif">&nbsp;</td>

  </tr>

</table>

</body>

</html>