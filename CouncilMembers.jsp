<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>IEI Kota</title>
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
%>
<link rel="stylesheet" href="layout/styles/CouncilMembers.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper row1">
  <div id="header" class="clear">
   <div class="fl_left">
	<div class="Rimage">
   <a href="images/logo.png"><img src="images/logo.png" height=120px width=120px /></a>
    </div>
	<div class="Rtitle">
     <h1><a href="index.html">Institution of Engineers(India)</a></h1>
      <p>Rajasthan Local Center,Kota</p>
	  </div>
    </div>
    <form action="#" method="post" id="login">
      <fieldset>
        <legend>Admin Login</legend>
		<input type="password" placeholder=" Admin password" />
        <input type="text" placeholder=" Admin id" />
        <!--<div id="forgot">Need <a href="#">Help ?</a> or <a href="#">Forgot Your Details ?</a></div>-->
        <input type="image" src="layout/images/sign_in.gif" id="signin" alt="Admin Sign In" />
      </fieldset>
    </form>
  </div>
</div>

<!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div id="topnav">
    <ul>
      <li class="active"><a href="pages/index.html">Home</a></li>
      <li><a href="pages/pages/style-demo.html">Publication</a></li>
      <li><a href="pages/pages/full-width.html">About Us</a></li>
      <li><a href="#">Services</a>
        <ul>
          <li><a href="#">Accomodation</a></li>
          <li><a href="#">Lecture Hall/Community Hall</a></li>
        </ul>
      </li>
	  <li><a href="#">Souvenier</a></li>
	   <li><a href="#">Appeal</a>
        <ul>
          <li><a href="#">For Updation of mailing Address</a></li>
          <li><a href="#">Generous Donors</a></li>
        </ul>
      <li><a href="pages/pages/3-columns.html">Contact Us</a></li>
      <li class="last"><a href="pages/pages/gallery.html">Suggestion</a></li>
    </ul>
    <div  class="clear"></div>
  </div>
</div><!-- ####################################################################################################### -->
<div class="wrapper row4">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
    <h1>Council Members:</h1>
    <!--<h2>Headline 2 Colour and Size</h2>
    <h3>Headline 3 Colour and Size</h3>
    <h4>Headline 4 Colour and Size</h4>
    <h5>Headline 5 Colour and Size</h5>
    <h6>Headline 6 Colour and Size</h6>
    <p>This is a W3C compliant free website template from <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a>. This template is distributed using a <a href="http://www.os-templates.com/template-terms">Website Template Licence</a>.</p>
    <p>You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more CSS templates visit <a href="http://www.os-templates.com/">Free Website Templates</a>.</p>-->
	<%
	   try
	   {
	      st=con.createStatement();
		  rs=st.executeQuery("select * from CouncilMembers");
		  String name="",centre="";%>
		  <ul>
		  <%
		  while(rs.next())
		  {
		    name=rs.getString(1);
			centre=rs.getString(2);
		  
		%> 
    
      <li><%= name %>, &nbsp;&nbsp;<%= centre %></li><br />
	  <%
	  }
	   
		  con.close();
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
    </ul>
    <!--<p>Vestibulumaccumsan egestibulum eu justo convallis augue estas aenean elit intesque sed. Facilispede estibulum nulla orna nisl velit elit ac aliquat non tincidunt. Namjusto cras urna urnaretra lor urna neque sed quis orci nulla. Laoremut vitae doloreet condimentumst phasellentes dolor ut a ipsum id consectetus. Inpede cumst vitae ris tellentesque fring intesquet nibh fames nulla curabitudin.</p>
    <ol>
      <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
      <li>Etiam vel sapien et est adipiscing commodo.</li>
      <li>Duis pharetra eleifend sapien, id faucibus dolor rutrum et.</li>
      <li>Donec et dui dolor, in lacinia leo.</li>
      <li>Mauris posuere tellus ac purus adipiscing dapibus.</li>
    </ol>
    <!-- ####################################################################################################### -->
   <div class="clear"></div>
 <!-- </div>
</div>-->
<!-- ####################################################################################################### -->
<div class="wrapper row5">
  <div id="footer" class="clear"> 
    <!-- ####################################################################################################### -->
   <!-- <div class="foot_contact">
      <h2>University Name Here</h2>
      <address>
      Address Line 1<br />
      Address Line 2<br />
      Town/City<br />
      Postcode/Zip
      </address>
      <ul>
        <li><strong>Tel:</strong> xxxxx xxxxxxxxxx</li>
        <li><strong>Fax:</strong> xxxxx xxxxxxxxxx</li>
        <li class="last"><strong>Email:</strong> <a href="#">contact@mydomain.com</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Administration</h2>
      <ul>
        <li><a href="#">Disclaimer</a></li>
        <li><a href="#">Accessibility</a></li>
        <li><a href="#">Freedom of Information</a></li>
        <li><a href="#">Website Privacy</a></li>
        <li><a href="#">Press Release Information</a></li>
        <li><a href="#">Annual Report</a></li>
        <li><a href="#">Financial Statements</a></li>
        <li><a href="#">Job Vacancies</a></li>
        <li class="last"><a href="#">Semester Dates</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Link Block 2</h2>
      <ul>
        <li><a href="#">Schools and Colleges</a></li>
        <li><a href="#">Student Activities</a></li>
        <li><a href="#">Student Affairs</a></li>
        <li><a href="#">Student Development</a></li>
        <li><a href="#">Student Financial Services</a></li>
        <li><a href="#">Student Group Directory</a></li>
        <li><a href="#">Student Life</a></li>
        <li><a href="#">International Students</a></li>
        <li class="last"><a href="#">Global Learning</a></li>
      </ul>
    </div>
    <div class="footbox last">
      <h2>Link Block 3</h2>
      <ul>
        <li><a href="#">Academic Advisory</a></li>
        <li><a href="#">Academic Assistance</a></li>
        <li><a href="#">Academic Calendars</a></li>
        <li><a href="#">Academics Office</a></li>
        <li><a href="#">Administration</a></li>
        <li><a href="#">Adult Learners</a></li>
        <li><a href="#">Alumni Chapters</a></li>
        <li><a href="#">Alumni Events</a></li>
        <li class="last"><a href="#">Residential Colleges</a></li>
      </ul>
    </div>
    <!-- #######################################################################################################-->
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="index.html">IEI Kota Local Centre</a></p>
    <!--<p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>-->
  </div>
</div>
</body>
</html>
