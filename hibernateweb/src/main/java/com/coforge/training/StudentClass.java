package com.coforge.training;

//component mapping
public class StudentClass {
          
	  private String classId;
	  private String className;
	  
	  
	  
	  
	public StudentClass() {
		super();
		
	}


	public StudentClass(String classId, String className) {
		super();
		this.classId = classId;
		this.className = className;
		
		
	}


	public String getClassId() {
		return classId;
	}


	public void setClassId(String classId) {
		this.classId = classId;
	}


	public String getClassName() {
		return className;
	}


	public void setClassName(String className) {
		this.className = className;
	}
	  
	  
	
}
