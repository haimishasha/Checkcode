<%@ page contentType="text/html; charset=gb2312"%>
//判断用户的输入是否合法

function check(myform){

	if(myform.author.value==""){

		alert("留言人不允许为空!");myform.author.focus();return;

	}

	if (myform.email.value!=""){

		var i=myform.email.value.indexOf("@");

		var j=myform.email.value.indexOf(".");

		if((i<0)||(i-j>0)||(j<0)){

			alert("您输入的Email地址不正确，请重新输入！");myform.email.value="";myform.email.focus();return;

		}

	}

	if(myform.content.value==""){

		alert("留言内容不允许为空！");myform.content.focus();return;

	}

	if(myform.checkCode.value==""){

		alert("验证码不允许为空！");myform.checkCode.focus();return;

	}

	alert("留言提交成功！");	

	myform.submit();		

}

