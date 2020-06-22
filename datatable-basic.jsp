<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

</head>
<body>
<div class="container">

<div class="row">

<div class="col-md-4">

<input type="text" name="start" id="start" class="form-control">
</div>


<div class="col-md-4">

<input type="text" name="end" id="end" class="form-control">
</div>

</div>
</br>
<table id="order" class="table table-bordered">
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
     <tr>
      <th>100</th>
      <th>Jane</th>
      <th>2017-02-15</th>
    </tr>
   <tr>
      <th>300</th>
      <th>Jane</th>
      <th>2017-02-15</th>
    </tr>
      <tr>
      <th>60</th>
      <th>Jane</th>
      <th>2017-02-15</th>
    </tr>
   <tr>
      <th>40</th>
      <th>Jane</th>
      <th>2017-02-15</th>
    </tr>
   <tr>
      <th>300</th>
      <th>Jane</th>
      <th>2017-02-15</th>
    </tr>
   <tr>
      <th>300</th>
      <th>Jane</th>
      <th>2017-02-15</th>
    </tr>
   <tr>
      <th>35</th>
      <th>Jane</th>
      <th>2017-02-15</th>
    </tr>
   <tr>
      <th>30</th>
      <th>Jane</th>
      <th>2017-02-15</th>
    </tr>
   <tr>
      <th>300</th>
      <th>Jane</th>
      <th>2017-02-15</th>
    </tr>
   <tr>
      <th>90</th>
      <th>Jane</th>
      <th>2017-02-15</th>
    </tr>
   <tr>
      <th>70</th>
      <th>Jane</th>
      <th>2017-02-15</th>
    </tr>
   <tr>
      <th>330</th>
      <th>Jane</th>
      <th>2017-02-15</th>
    </tr>
 
   
  </tbody>



</table>
</div>
</body>
</html>

<script>

$(document).ready(function() {
    var table = $('#order').DataTable();
   //  $('#start,#end').datepicker({format:"yyyy-mm-dd"});
    // Event listener to the two range filtering inputs to redraw on input
    $('#start, #end').change( function() {
    	 /*  var min = $('#start').val();
	        var max = $('#end').val();
	      */   var rows = table.rows({ 'search': 'applied' }).nodes();
		    var position=$(rows).find("td:eq(2)").text();
		    alert(position);
		    
	      
       // table.draw();
    } );
   /*  $.fn.dataTable.ext.search.push(
    	    function( settings, data, dataIndex ) {
    	        var min = $('#start').val();
    	        var max = $('#end').val();
    	        var age = data[0];// use data for the age column
    	 
    	        if ( ( min == '' && max == '' ) ||
    	             ( min == '' && age <= max ) ||
    	             ( min <= age && '' == max ) ||
    	             ( min <= age && age <= max ) )
    	        {
    	            return true;
    	        }
    	        return false;
    	    }
    	);
 */
} );


</script>
