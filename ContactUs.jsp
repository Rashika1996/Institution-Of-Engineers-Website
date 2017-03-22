<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
<link rel="stylesheet" href="layout/styles/ContactUs.css" type="text/css" />
<!-- 3 Column Stylesheet Added To The Page And Not To The Layout.css -->
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
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row4">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
    <!--<div id="left_column">
      <div class="holder">
        <h2 class="title">Quick Links</h2>
        <ul class="nostart">
          <li><a href="#">Academic departments</a></li>
          <li><a href="#">Alumni</a></li>
          <li><a href="#">Business &amp; Enterprise</a></li>
          <li><a href="#">Departments A-Z</a></li>
          <li><a href="#">Events</a></li>
          <li><a href="#">Graduate Courses</a></li>
          <li><a href="#">International Students</a></li>
          <li><a href="#">Job opportunities</a></li>
          <li><a href="#">Lifelong Learning</a></li>
          <li><a href="#">Maps and Directions</a></li>
          <li><a href="#">Online Courses</a></li>
          <li><a href="#">Parents</a></li>
          <li><a href="#">Postgraduate research</a></li>
          <li><a href="#">Postgraduate taught</a></li>
          <li><a href="#">Prospective Students</a></li>
          <li><a href="#">Research</a></li>
          <li><a href="#">Students</a></li>
          <li><a href="#">Teaching &amp; Learning</a></li>
          <li><a href="#">Undergraduate Courses</a></li>
          <li><a href="#">Videos</a></li>
          <li><a href="#">Visiting the University</a></li>
          <li><a href="#">What's On</a></li>
        </ul>
      </div>
      <div class="holder">
        <h2 class="title">Lorem ipsum dolor</h2>
        <div class="imgholder"><img src="../images/demo/190x90.gif" alt="" /></div>
        <div class="imgholder last"><img src="../images/demo/190x90.gif" alt="" /></div>
      </div>
    </div>
    <!-- ############ -->
	<% 
	try
	{
	   st=con.createStatement();
	   String Add="",Contact="",Email="";
	   rs=st.executeQuery("select * from ContactUs");
	   while(rs.next())
	   {
	     Add= rs.getString(1);
		 Contact=rs.getString(2);
		 Email=rs.getString(3);
	   }
	   
	%>
	   
    <div id="content">
      <h1 class="title">Contact Us</h1>
      <div class="imgholder"><img src="images/demo/440x215.gif" alt="" /></div>
      <p><b>Address:</b> <br /><%=   Add %><br /></br><b>Contact:</b><br<br /><%=   Contact %><br /></br><b>Email:</b></br><%=   Email %><br /></br></p>
      <%
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
      <!--<h2 class="title">Table(s)</h2>
      <table summary="Summary Here" cellpadding="0" cellspacing="0">
        <thead>
          <tr>
            <th>Header 1</th>
            <th>Header 2</th>
            <th>Header 3</th>
            <th>Header 4</th>
          </tr>
        </thead>
        <tbody>
          <tr class="light">
            <td>Value 1</td>
            <td>Value 2</td>
            <td>Value 3</td>
            <td>Value 4</td>
          </tr>
          <tr class="dark">
            <td>Value 5</td>
            <td>Value 6</td>
            <td>Value 7</td>
            <td>Value 8</td>
          </tr>
        </tbody>
      </table>
      <h2 class="title">Title Here</h2>
      <p>Etiam euismod porttitor diam, eget tristique lacus eleifend tincidunt. In hac habitasse platea dictumst.</p>
      <ul>
        <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
        <li>Donec at nunc nec lectus viverra pretium sit amet a orci.</li>
        <li>Praesent ac felis non magna accumsan accumsan.</li>
        <li>Vivamus non est nunc, non pulvinar libero.</li>
      </ul>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et sapien id quam sodales tincidunt. Cras facilisis mi eu nibh ultricies sed malesuada metus varius.</p>
    </div>
    <!-- ############ -->
   <!-- <div id="right_column">
      <div class="holder">
        <h2 class="title">Lorem ipsum dolor</h2>
        <p>Nuncsed sed conseque a at quismodo tris mauristibus sed habiturpiscinia sed.</p>
        <ul>
          <li><a href="#">Lorem ipsum dolor sit</a></li>
          <li>Etiam vel sapien et</li>
          <li><a href="#">Etiam vel sapien et</a></li>
        </ul>
        <p>Nuncsed sed conseque a at quismodo tris mauristibus sed habiturpiscinia sed. Condimentumsantincidunt dui mattis magna intesque purus orci augue lor nibh.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
      <div class="holder">
        <h2 class="title">Lorem ipsum dolor</h2>
        <div class="imgholder"><img src="../images/demo/240x90.gif" alt="" /></div>
        <div class="imgholder"><img src="../images/demo/240x90.gif" alt="" /></div>
        <div class="imgholder last"><img src="../images/demo/240x90.gif" alt="" /></div>
      </div>-->
    </div>
    <!-- ####################################################################################################### --> 
 <!-- </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row5">
  <!--<div id="footer" class="clear"> 
    <!-- ####################################################################################################### -->
    <!--<div class="foot_contact">
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
    <!-- ####################################################################################################### --> 
  <!--</div>-->
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Domain Name</a></p>
      </div>
</div>
</body>
</html>