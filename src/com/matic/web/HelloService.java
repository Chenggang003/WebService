package com.matic.web;

import javax.jws.WebService;

@WebService
public class HelloService {
	
	public String sayHello(String string){
		return "hello " + string;
	}
}
