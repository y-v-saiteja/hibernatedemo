package com.coforge.training;

import java.util.Date;

public class Candidate extends Person
{
	private Date joiningDate;
    private String departmentName;
    
    
	public Candidate(String firstname, String lastname,Date joiningDate,
            String departmentName) {
		super(firstname, lastname);
		
		
		this.joiningDate = joiningDate;
        this.departmentName = departmentName;
	}


	public Date getJoiningDate() {
		return joiningDate;
	}


	public void setJoiningDate(Date joiningDate) {
		this.joiningDate = joiningDate;
	}


	public String getDepartmentName() {
		return departmentName;
	}


	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	
}
