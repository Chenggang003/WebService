package com.matic.service;

import javax.jws.WebService;
import javax.xml.ws.BindingType;

import org.apache.cxf.frontend.ServerFactoryBean;
import org.apache.cxf.jaxws.JaxWsServerFactoryBean;

@WebService
@BindingType(value=javax.xml.ws.soap.SOAPBinding.SOAP11HTTP_BINDING)
public class CXFService {
	
	public String hello(String string){
		return "hello " + string;
	}
	
	public static void main(String[] args) {
		//1.创建服务工厂对象
		//ServerFactoryBean sfb = new ServerFactoryBean();
		JaxWsServerFactoryBean sfb = new JaxWsServerFactoryBean();
		//2.设置服务的地址
		sfb.setAddress("http://10.83.33.106:8010/WebService/CXFService");
		//3.设置服务类
		sfb.setServiceClass(CXFService.class);
		//4.设置服务对象的实例
		sfb.setServiceBean(new CXFService());
		//5.发布服务
		sfb.create();
		System.out.println("服务发布完成!");
	}
	
}
