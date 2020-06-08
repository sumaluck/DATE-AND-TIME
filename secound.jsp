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
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" /> 

<!--Font Awesome (added because you use icons in your prepend/append)-->
<link rel="stylesheet" href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />

<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script type="text/javascript">
var sid="lll"
function modals(id){
	var a=id;
	var sid="first.jsp?tital=";
	var p=sid+a;
	$.ajax({
		type:"get",
		url:"ajax?n1="+id,
		
		success:function(data)
		{
			var result=data;
			//$('#check0').attr('value',result.length);
				}
	});
	$('.modal-body').load('third.jsp',{"tital":id},function(){
        $('#myModal').modal({show:true});
    });
	 // $('#myModal').modal('show');
}
$('document').ready(function() {
	  $('#btnTest').click(function() {
	    $('#myModal').modal('show');
	  });
	});

$(document).ready(function() {
    $('#example').DataTable();
} );
$(document).ready(function() {
    $('#my-table').DataTable();
} );
$(document).ready(function() {
    $('#min-date').datepicker();
} );
$(document).ready(function() {
    $('#max-date').datepicker();
} );

</script>
</head>
<body>
<%try{
	ResultSet rs=Database.test();
	%>
	
	<table id="example" class="display" border=1 align=center>
	<%
	while(rs.next())
	{%>
	<thead></thead>
	<tbody>
		<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><%=rs.getString(6) %></td>
		<td><%=rs.getString(7) %></td>
		<td><%=rs.getString(8) %></td>
		<td><%=rs.getString(9) %></td>
				<td><button type="button" class="btn btn-info btn-lg"  onclick="modals(id='<%=rs.getString(1)%>')">Open Modal</button></td>
		
		
		</tr>
		</tbody>
		<tfoot></tfoot>
		<% 
	}
	
	%>
	
	
	</table>
	<% 
}
catch(Exception e)
{
	out.print(e);
	}
%>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
          
          
           
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <div class="container">
  <div class="col-md-4 pull-right">
    <div class="input-group input-daterange">

      <input type="text" id="min-date" class="form-control date-range-filter" data-date-format="yyyy-mm-dd" placeholder="From:">

      <div class="input-group-addon">to</div>

      <input type="text" id="max-date" class="form-control date-range-filter" data-date-format="yyyy-mm-dd" placeholder="To:">

    </div>
  </div>
</div>

<table id="my-table">
  <thead>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Created At</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>1</th>
      <th>Bob</th>
      <th>2017-04-20</th>
    </tr>
    <tr>
      <th>2</th>
      <th>Jane</th>
      <th>2017-02-15</th>
    </tr>
    <tr>
      <th>3</th>
      <th>Jill</th>
      <th>2015-02-15</th>
    </tr>
    <tr>
      <th>4</th>
      <th>Joe</th>
      <th>2016-08-06</th>
    </tr>
  </tbody>
</table>
  <script type="text/javascript">
  
  
  $('.input-daterange input').each(function() {
	  $(this).datepicker('clearDates');
	});

	// Set up your table

	// Extend dataTables search
/* 	$.fn.dataTable.ext.search.push(
	  function(settings, data, dataIndex) {
	    var min = $('#min-date').val();
	    var max = $('#max-date').val();
	    var createdAt = data[2] || 0; // Our date column in the table

	    if (
	      (min == "" || max == "") ||
	      (moment(createdAt).isSameOrAfter(min) && moment(createdAt).isSameOrBefore(max))
	    ) {
	      return true;
	    }
	    return false;
	  }
	);

 */	// Re-draw the table when the a date range filter changes
	$('.date-range-filter').change(function() {
	  table.draw();
	});

	$('#my-table_filter').hide();
  </script>
</body>
</html>