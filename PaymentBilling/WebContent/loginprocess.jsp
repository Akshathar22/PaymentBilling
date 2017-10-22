<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
String username=request.getParameter("username");

for(int i=0;i<username.length();i++){
	if(username.charAt(i)>='A'&&username.charAt(i)<='Z'){}
	else if(username.charAt(i)>='a'&&username.charAt(i)<='z'){}
	else if(username.charAt(i)>='0' && username.charAt(i)<='9'){}
	else{
		request.setAttribute("Error","Sorry! Username should be AlphaNumberic ");
		%>
		<jsp:forward page="index.jsp"></jsp:forward>
      <%
	}
}

String userpass=request.getParameter("userpass");
String branch=request.getParameter("branch");
boolean status=false;
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?user=root&password=root");
PreparedStatement ps=con.prepareStatement("select * from payregister where username=? and userpass=? and branch=? ");
ps.setString(1,username);
ps.setString(2,userpass);
ps.setString(3,branch);
ResultSet rs=ps.executeQuery();
status=rs.next();
if(status){
//System.out.print("hi");
username=rs.getString(2);
session.setAttribute("username",String.valueOf(username));
session.setAttribute("islogin","plz sign in first");

%>
<jsp:forward page="home.jsp"></jsp:forward>
<%
}
else{
request.setAttribute("Error","Sorry! Username or Password Error. Plz Enter Correct Detail ");
session.setAttribute("Loginmsg","Plz sign in first");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
}
catch(Exception e){
e.printStackTrace();
}

%>