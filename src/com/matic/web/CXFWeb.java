package com.matic.web;

import javax.jws.WebService;

import com.matic.vo.People;


@WebService
public interface CXFWeb {
	
	public boolean addPeople(People people);
}
