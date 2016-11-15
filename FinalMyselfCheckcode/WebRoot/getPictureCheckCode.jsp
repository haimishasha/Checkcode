<%@ page contentType="text/html; charset=GBK" language="java"  import="java.util.Random"%>

<%Random random = new Random();%>

<img src="<%out.println("PictureCheckCode?rand="+random.nextInt(10000));%>" height="20" width="70" style="padding-top:-20px"  id="createCheckCode">


<a href="#" id="checkCodeHint" onClick="myReloadStep2(checkCode)">看不清?换一个</a>
 