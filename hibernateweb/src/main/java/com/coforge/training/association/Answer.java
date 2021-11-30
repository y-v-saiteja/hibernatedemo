package com.coforge.training.association;

import javax.persistence.*;

@Entity
@Table(name="answer")
public class Answer {

	
	@Id
	 @GeneratedValue(strategy=GenerationType.TABLE)
	
	
	private int id;  
    private String answername;   
    private String postedBy;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAnswername() {
		return answername;
	}
	public void setAnswername(String answername) {
		this.answername = answername;
	}
	public String getPostedBy() {
		return postedBy;
	}
	public void setPostedBy(String postedBy) {
		this.postedBy = postedBy;
	}
    
}
