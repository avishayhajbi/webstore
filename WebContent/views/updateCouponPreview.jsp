<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%>
    <%@ page errorPage="error.jsp" %>
    <%@ page import="ac.il.shenkar.couponHibernet.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1255">
<title>Insert title here</title>
  <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  <script src="jquery/development-bundle/ui/jquery.ui.timepicker-addon.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    var availableTags = [
      "resterant",
      "travel",
      "sport"
    ];
    $( "#tags" ).autocomplete({
      source: availableTags
    });
  });
  </script>
  <script>
  $(document).ready(function() {
    $("#datepicker").datepicker();
  });


  </script>
</head>
<body>


<form action="/webstore/controller/backAfterUpdate" method=POST >
<p>update coupon preview</p>

<!--  <input id="firstname" class="" name="firstname" type="text"  
value="First Name" onfocus="if (this.value == 'First Name') {this.value = '';}" 
onblur="if (this.value == '') {this.value = 'First Name';}" /> -->

<%Object obj =request.getAttribute("coupon"); %>

coupon id: <input type="text" name="couponid" value="<%out.print(((Coupon)obj).get_id());%>"><br>
business id: <input type="text" name="businessid" value="<%out.print(((Coupon)obj).get_busniess_id());%>"><br>
description: <input type="text" name="description" value="<%out.print(((Coupon)obj).get_description());%>"><br>
<label for="tags">category: </label> <input type="text" id="tags" name="category" value="<%out.print(((Coupon)obj).get_category());%>"><br>
price: <input type="text" name="price" value="<%out.print(((Coupon)obj).get_price());%>"><br>
image: <input type="text" name="image" value="<%out.print(((Coupon)obj).get_image());%>"><br>
expire date: <input id="datepicker" name= "expiredate" value=<%out.print(((Coupon)obj).get_expire_date());%>"/><br>
time :<input type="text" name="time" value="HH-MM-SS" value="<%out.print(((Coupon)obj).get_time());%>"><br>
<input type="submit" value="Submit">
<br>
<%
Object answer = request.getAttribute("answer");
if (answer!=null)
out.println( answer+ "<br/>\n" );
%>
<!-- <Button name="subbmit" href="/webstore/controller/coupon" name="coupon">COUPON</Button> -->
</form>
<a href="../controller/logout">�����</a>
<a href="../controller/back">����</a>
</body>
