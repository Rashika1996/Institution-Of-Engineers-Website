<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%
Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	try
	{
	  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");/* Loading Driver using this static class named Class*/
	  con=DriverManager.getConnection("jdbc:odbc:IEI");
	}
    catch(ClassNotFoundException e1)
	{
	  out.println(e1);
	}
    catch(SQLException e2)
	{
	  out.println(e2);
	}
	/*HttpSession session=req.getSession();//This part will be included everywhere
String uname=(String)session.getAttribute("a1");
if(uname==null)
res.sendRedirect("Index.html");*/
%>

<title>IEI Kota</title>
</head>
<body>
<% 
  try
  {
    st=con.createStatement();
	String info=request.getParameter("t1");
	st.executeUpdate("insert into LatestNews values('null','"+info+"')");
	response.sendRedirect("InsertImage.html");
	}
	 catch(SQLException e3)
	{
	  out.println(e3);
	}
	catch(Exception e4)
	{
	  out.println(e4);
	}
	%>
</body>
</html>
