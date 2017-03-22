<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>IEI Kota</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%
Connection con=null;
	Statement st=null,st1=null;
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
<link rel="stylesheet" href="layout/styles/Chairman.css" type="text/css" />
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
     
	   <div id="content">
      <div class="RTitle">Hon.Secretary 2015-16</div><br />
	  <!-- <img class="imgl" src="images/demo/imgl.gif" alt="" width="125" height="125" />
      <p>This is a W3C compliant free website template from <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a>. This template is distributed using a <a href="http://www.os-templates.com/template-terms">Website Template Licence</a>.</p>
      <p>You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more CSS templates visit <a href="http://www.os-templates.com/">Free Website Templates</a>.</p>
      <p>Portortornec condimenterdum eget consectetuer condis consequam pretium pellus sed mauris enim. Puruselit mauris nulla hendimentesque elit semper nam a sapien urna sempus.</p>
     
      <img class="imgl" src="images/demo/imgl.gif" alt="" width="125" height="125" />
      <p>This is a W3C compliant free website template from <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a>. This template is distributed using a <a href="http://www.os-templates.com/template-terms">Website Template Licence</a>.</p>
      <p>You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more CSS templates visit <a href="http://www.os-templates.com/">Free Website Templates</a>.</p>
      <p>Portortornec condimenterdum eget consectetuer condis consequam pretium pellus sed mauris enim. Puruselit mauris nulla hendimentesque elit semper nam a sapien urna sempus.</p>-->
      <table summary="Summary Here" cellpadding="0" cellspacing="0">
        <tbody>
		<%
		try
		{
		  st=con.createStatement();
		  st1=con.createStatement();
	 
	 rs=st.executeQuery("select * from Secretary where current='present'"); 
	 String name="",id="",image="",officeadd="",officecontact="",residenceadd="",residencecontact="",current="";
	 while(rs.next())
	 {
	   name=rs.getString(1);
	   id=rs.getString(2);
	   image=rs.getString(3);
	   officeadd=rs.getString(4);
	   officecontact=rs.getString(5);
	   residenceadd=rs.getString(6);
	   residencecontact=rs.getString(7);
	   
	 }
		%>
          <tr class="light">
           <td><img class="imgl" src="<%= image %>" alt="" width="125" height="125" /><%= name %><br>(<%= id %>)<br><font color="#8199A9"><b>Chairman</b></font></td>
            <td>Office Address:<%= officeadd %><br>Contact:<%= officecontact %> </td>
			<td>Residence Address:<%= residenceadd %><br>Contact:<%= residencecontact %> </td>
          </tr>
		  <%  
		 rs=st1.executeQuery("select * from Secretary where current='past'");
		  while(rs.next())
	 {
	   name=rs.getString(1);
	   id=rs.getString(2);
	   image=rs.getString(3);
	   officeadd=rs.getString(4);
	   officecontact=rs.getString(5);
	   residenceadd=rs.getString(6);
	   residencecontact=rs.getString(7);
	   
	 }
	 %>
          <tr class="dark">
             <td><img class="imgl" src="<%= image %>" alt="" width="125" height="125" /><%= name %><br>(<%= id %>)<br><font color="#8199A9"><b>Past Chairman</b></font></td>
            <td>Office Address:<%= officeadd %><br>Contact:<%= officecontact %> </td>
			<td>Residence Address:<%= residenceadd %><br>Contact:<%= residencecontact %> </td>
          </tr>
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
        </tbody>
      </table>
      <!--<div id="comments">
        <h2>Comments</h2>
        <ul class="commentlist">
          <li class="comment_odd">
            <div class="author"><img class="avatar" src="../images/demo/avatar.gif" width="32" height="32" alt="" /><span class="name"><a href="#">A Name</a></span> <span class="wrote">wrote:</span></div>
            <div class="submitdate"><a href="#">August 4, 2009 at 8:35 am</a></div>
            <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
          </li>
          <li class="comment_even">
            <div class="author"><img class="avatar" src="../images/demo/avatar.gif" width="32" height="32" alt="" /><span class="name"><a href="#">A Name</a></span> <span class="wrote">wrote:</span></div>
            <div class="submitdate"><a href="#">August 4, 2009 at 8:35 am</a></div>
            <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
          </li>
          <li class="comment_odd">
            <div class="author"><img class="avatar" src="../images/demo/avatar.gif" width="32" height="32" alt="" /><span class="name"><a href="#">A Name</a></span> <span class="wrote">wrote:</span></div>
            <div class="submitdate"><a href="#">August 4, 2009 at 8:35 am</a></div>
            <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
          </li>
        </ul>
      </div>
      <h2>Write A Comment</h2>
      <div id="respond">
        <form action="#" method="post">
          <p>
            <input type="text" name="name" id="name" value="" size="22" />
            <label for="name"><small>Name (required)</small></label>
          </p>
          <p>
            <input type="text" name="email" id="email" value="" size="22" />
            <label for="email"><small>Mail (required)</small></label>
          </p>
          <p>
            <textarea name="comment" id="comment" cols="100%" rows="10"></textarea>
            <label for="comment" style="display:none;"><small>Comment (required)</small></label>
          </p>
          <p>
            <input name="submit" type="submit" id="submit" value="Submit Form" />
            &nbsp;
            <input name="reset" type="reset" id="reset" tabindex="5" value="Reset Form" />
          </p>
        </form>
      </div>
    </div>
    <div id="column">
      <div class="subnav">
        <h2>Secondary Navigation</h2>
        <ul>
          <li><a href="#">Navigation - Level 1</a></li>
          <li><a href="#">Navigation - Level 1</a>
            <ul>
              <li><a href="#">Navigation - Level 2</a></li>
              <li><a href="#">Navigation - Level 2</a></li>
            </ul>
          </li>
          <li><a href="#">Navigation - Level 1</a>
            <ul>
              <li><a href="#">Navigation - Level 2</a></li>
              <li><a href="#">Navigation - Level 2</a>
                <ul>
                  <li><a href="#">Navigation - Level 3</a></li>
                  <li><a href="#">Navigation - Level 3</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="#">Navigation - Level 1</a></li>
        </ul>
      </div>
      <div class="holder">
        <h2 class="title"><img src="../images/demo/60x60.gif" alt="" />Nullamlacus dui ipsum conseque</h2>
        <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi penas dapibulum orna. Urnaultrices quis curabitur phasellentesque.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
      <div id="featured">
        <ul>
          <li>
            <h2>Indonectetus facilis</h2>
            <p class="imgholder"><img src="../images/demo/240x90.gif" alt="" /></p>
            <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi penas dapibulum orna. Urnaultrices quis curabitur phasellentesque congue magnis vestibulum quismodo nulla et feugiat. Adipisciniapellentum leo ut consequam ris felit elit id nibh sociis malesuada.</p>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </li>
        </ul>
      </div>
      <div class="holder">
        <h2>Lorem ipsum dolor</h2>
        <p>Nuncsed sed conseque a at quismodo tris mauristibus sed habiturpiscinia sed.</p>
        <ul>
          <li><a href="#">Lorem ipsum dolor sit</a></li>
          <li>Etiam vel sapien et</li>
          <li><a href="#">Etiam vel sapien et</a></li>
        </ul>
        <p>Nuncsed sed conseque a at quismodo tris mauristibus sed habiturpiscinia sed. Condimentumsantincidunt dui mattis magna intesque purus orci augue lor nibh.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
    <!-- ####################################################################################################### -->
   <!-- <div class="clear"></div>-->
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row5">
  <div id="footer" class="clear"> 
    <!-- #######################################################################################################-->
   <!-- <div class="foot_contact">
     <!-- <h2>University Name Here</h2>
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
      </ul>-->
   <!--</div>
    <!-- #######################################################################################################--> 
  <!--</div>
  </div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
  </div>
</div>
</body>
</html>