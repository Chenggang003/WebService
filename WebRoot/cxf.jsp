<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cxf.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.6.2.js"></script>
	<script type="text/javascript">
		$(function(){
			/* var data = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:web="http://web.matic.com/">'
			   + '<soapenv:Header/>'
			  + '<soapenv:Body>'
			      + '<web:addPeople>'
			         <!--Optional:-->
			        + '<arg0>'
			           + '<age>12</age>'
			            <!--Optional:-->
			           + '<name>devil</name>'
			           + '<sex>1</sex>'
			        + '</arg0>'
			     + '</web:addPeople>'
			  + '</soapenv:Body>'
			+ '</soapenv:Envelope>'; */
			var data = {"age":"12","name":"12",sex:"1"};
		
			$.ajax({
				url: "http://localhost:8080/WebService/service/addPeople?wsdl",
				type: "post",
				dataType: "json",
				contentType: "application/json;charset=UTF-8",
				data: data,
				success: function(responseText){
					alert($(responseText).find('return').html());
				},
				error: function(){
					alert("error");
				}
			})
		});
	</script>
  </head>
  <body>
    This is my JSP page. <br>
  </body>
</html>
