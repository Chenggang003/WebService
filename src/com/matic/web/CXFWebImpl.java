package com.matic.web;

import com.matic.vo.People;

public class CXFWebImpl implements CXFWeb{
	
	@Override
	public boolean addPeople(People people) {
		boolean b = true;
		if(people == null){
			b = false;
		}else{
			System.out.println(people.getName());
		}
		return b;
	}
}
