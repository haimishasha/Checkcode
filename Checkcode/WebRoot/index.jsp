<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>Ӣ�ġ����ֺ����Ļ�ϵĲ�ɫ��֤��</title>

<link href="Css/style.css" rel="stylesheet">

<script language="javascript">

	function checkform(myform) {

		for (i = 0; i < myform.length; i++) {

			if (myform.elements[i].value == "") {

				alert(myform.elements[i].title + "����Ϊ�գ�");

				myform.elements[i].focus();

				return false;

			}

		}

	}

	function myReload() {

		//document.getElementById("createCheckCode").src="PictureCheckCode";

		document.getElementById("createCheckCode").src = document
				.getElementById("createCheckCode").src
				+ "?nocache=" + new Date().getTime();

	}
</script>

</head>



<body>

	<table width="613" height="434" border="0" align="center"
		cellpadding="0" cellspacing="0" background="images/loginBg.jpg">

		<tr>

			<td width="83" height="124" valign="top">&nbsp;</td>

			<td width="418" valign="top">&nbsp;</td>

			<td width="112" valign="top">&nbsp;</td>

		</tr>

		<form name="form1" method="post" action="deal.jsp"
			onSubmit="return checkform(form1)">

			<tr>

				<td height="161" valign="top">&nbsp;</td>

				<td align="center" valign="top">



					<table width="90%" height="141" border="0" cellpadding="0"
						cellspacing="0">

						<tr>

							<td width="23%" align="center">�û�����</td>

							<td colspan="2"><input name="username" type="text"
								id="username" size="30" title="�û���"></td>

						</tr>

						<tr>

							<td align="center">��&nbsp;&nbsp;�룺</td>

							<td colspan="2"><input name="pwd" type="password" id="pwd"
								size="30" title="����"></td>

						</tr>

						<tr>

							<td align="center">��֤�룺</td>

							<td width="18%"><input name="checkCode" type="text"
								id="checkCode" title="��֤�����ִ�Сд" size="8" maxlength="4"></td>

							<td width="59%" style="padding-top:4px"><img
								onClick="myReload()">&nbsp;������?��һ��</a></td>

						</tr>

						<tr>

							<td>&nbsp;</td>

							<td colspan="2"><input name="Submit" type="submit"
								class="btn_bg" value="��¼"> &nbsp; <input name="Submit2"
								type="reset" class="btn_bg" value="����"></td>

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

