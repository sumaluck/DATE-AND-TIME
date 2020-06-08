<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
    <%@page import="first.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
  
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<form action="ajax" method="get" name="form" id="form">
<input type="text" name="n1"/><br>
<input type="text" name="n2"/><br>
<input type="submit" value="calculate"  name="n3"/><br>
<input type="text" value="" id="result" name="n4"/>
</form>

</form>
</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script type="text/javascript">
var frm=$('#form');
frm.submit(function()
		{
	$.ajax({
		type:frm.attr('method'),
		url:frm.attr('action'),
		data:frm.serialize(),
		success:function(data)
		{
			var result=data;
			$('#result').attr('value',result);
		}
	});
	return false;
		});


</script>