
<div id="outer">
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>


<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>



<body>
<Font style="color: navy;" size="4">Contact Us:</Font>
<form method="post" name="myform" id="myform" action="query.jsp">
<table width="100%">
<tr>
<td>
<table width="55%" align="left" >
<tr><td><img src="images/pic01.jpg"/></td>
<td><Font style="color: navy;" size="3"><B>Your Query:</B></Font><br>

<textarea name="query" style="width: 600px; height:80px"></textarea><br>
<Font style="color: navy;" size="2"><B>Email:</B></Font><input type="text" name="email" style="width: 180px; "/>
<input type="submit" value="submit" style="padding: 2px 2px" >
<% 
					if(request.getAttribute("msg")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("msg"));
					out.print("</font>");
					}
					%>
</td>
</tr>
</table>
</td>
<td>

<table align="right" >
<tr align="left"><td><Font style="color: navy;" size="3">Cont No.:9876543210</Font><br>
<Font style="color: navy;" size="3">Email id:07lalitkumar@gmail.com </br> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp akshathar17@gmail.com</Font></br>
<Font style="color: navy;" size="3">Contact Person:Akshtha R. Reddy</br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspLaLit Kumar</Font>
</td></tr>
</table>
</td>
</tr>

</table>
</form>
</body>

<jsp:include page="footer.jsp"></jsp:include>
</div>
</html>