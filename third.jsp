<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="first.Database"
    import="java.sql.*"
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

 table{
table-layout:fixed;
}
table td{
height:70px;
width:80px;}
.ab {

height:70px;
width:80px;
overflow:auto;
}
</style>
</head>
<body>
<%
String tital=request.getParameter("tital");
try
{
ResultSet rs=Database.getdetails(tital);
if(rs.next())
{
	

%>


<form>  
  
<label> Firstname </label>         
<input type="text" name="firstname" value="<%=rs.getString(1) %>" /> <br> <br>  
<label> Middlename: </label>     
<input type="text" name="middlename" value="<%=rs.getString(2) %>" /> <br> <br>  
<label> Lastname: </label>         
<input type="text" name="lastname" value="<%=rs.getString(3) %>"/> <br> <br>  
  
  
<label>   
Phone :  
</label>  
<input type="text" name="country code" value="<%=rs.getString(4) %>"/>   <br>
<input type="text" name="phone" value="<%=rs.getString(5) %>"/> <br> <br>  
Email:  
<input type="email" id="email" name="email" value="<%=rs.getString(6) %>"/> <br>    
<br> <br>  
<input type="button" value="Submit"/>  
</form>



<% 



}


}
catch(Exception e)
{
	out.print(e);}


%>
<table border="2px solid red"  >
<tr><td>
	<div ></div>
	</td>
	<td>
	<div></div>
	</td>
</tr>		
<tr><td>
	<div class="ab">
	<br>
	<br>
	<br>
	<br>
	</div>
	</td>
	<td>
	<div class="ab"> my name is  dfkjhf hfsah fkhfsdkha khadf kafdas hkfhsa kdhfsa hsdfk khhfkds a</div>
	</td>
</tr>		

<tr><td>
	<div class="ab">ksadkfhk hdfasd hkfsd hfkdsh hfksdh dfshf khkdfs a dsfkh adfhkd shkhdsf hsdkf dksfhk dsfasdhf</div>
	</td>
	<td>
	<div class="ab"><br>
	
	<br>
	<br><br><br><br></div>
	</td>
</tr>		

<tr><td>
	<div class="ab">kshadfkhakshfkahsdfhksafdksfhkdfhks</div>
	</td>
	<td>
	<div class="ab"></div>
	</td>
</tr>		


</table>
<div id="ab">my name is suman kumar

<br>
my namw is
<br>
myname is
<br>
ghfhgfhgfh</div>
</html>