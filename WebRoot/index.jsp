<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    This is my JSP page. <br>
  </body>
  <script type="text/javascript">
  	var xhr;
  	function invoke(){
  		if(window.ActiveXObject){
  			xhr = new ActiveXObject("Microsoft.XMLHTTP");
  		}else{
  			xhr = new XMLHttpRequest();
  		}
  		//指定请求的地址
  		var url = "http://10.83.33.106:8080/WebService/TheService?wsdl";
  		//定义类型地址和异步
  		xhr.open("POST",url,true);
  		//设置Content-type
  		xhr.setRequestHeader("Content-Type","text/xml;charset=UTF-8");
  		//指定回调方法
  		xhr.onreadystatechange = back;
  		var textVar  = "123";
  		//组装消息体的数据
  		var data = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ser="http://service.matic.com/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">'
		  + '<soapenv:Header/>'
		   + '<soapenv:Body>'
		      + '<ser:Hello>'
		         <!--Optional:-->
		         + '<arg0>'+textVar+'</arg0>'
		     + '</ser:Hello>'
		  + '</soapenv:Body>'
		+ '</soapenv:Envelope>';
		xhr.send(data);
  	}
  	function back(){
  		if(xhr.readyState == 4){
  			if(xhr.status == 200){
  				var doc = xhr.responseXML;
  				alert(doc);
  				alert(xhr.responseText);
  				var atge = doc.getElementsByTagName("return")[0];
  				alert(tag);
  			}
  		}
  	}
  	window.onload = invoke;
  </script>
</html>
