package com.matic.service;

import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.Endpoint;

@WebService(portName="PortName",name="ServerClassName",serviceName="ServiceAccessPoint",targetNamespace="NameSpaceName")
public class Service {
	
	public static void main(String[] args) {
		Endpoint.publish("http://10.83.33.106:8088/WebService/TheService?wsdl",new Service());
		System.out.println("publish finish!!!");
	}
	
	public @WebResult(name="ResultParentName") String Hello(@WebParam(name="InputParentName") String string){
		return string + "Hello WebService";
	}
}
