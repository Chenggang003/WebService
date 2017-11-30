package com.matic.web;

import com.matic.vo.People;

public class CXFWebImpl implements CXFWeb{
	
	@Override
	public People addPeople(People people) {
		System.out.println(people.getName());
		people.setAge(23);
		people.setName("阿三!");
		people.setSex('0');
		return people;
	}
}
