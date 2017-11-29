package com.matic.service;

import org.apache.cxf.jaxws.JaxWsClientFactoryBean;
import org.apache.cxf.jaxws.JaxWsServerFactoryBean;

public class CXFInterfaceImpl implements CXFInterface {

	@Override
	public String test1(String name) {
		// TODO Auto-generated method stub
		return "hello " + name;
	}
	
	public static void main(String[] args) {
		JaxWsServerFactoryBean jf = new JaxWsServerFactoryBean();
		jf.setAddress("http://10.83.33.106:8011/WebService/CXFInterfaceImpl");
		jf.setServiceClass(CXFInterface.class);
		jf.setServiceBean(new CXFInterfaceImpl());
		jf.create();
		System.out.println("server publish finish!");
	}
}
