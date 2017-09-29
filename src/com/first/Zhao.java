package com.first;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class Zhao extends ActionSupport {
	List<Integer> list=new ArrayList<Integer>();
	
	public String execute() throws Exception {
		for(int i=0;i<5;i++){
			list.add(i);
		}
		return SUCCESS;
	}

	public List<Integer> getList() {
		return list;
	}
    
}
