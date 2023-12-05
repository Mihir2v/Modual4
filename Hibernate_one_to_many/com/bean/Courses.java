package com.bean;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "STUDENTS")
public class Courses {
	
	private int cid;
	private String cname;
	private Collection<Students> students;
	@Id
	@GenericGenerator(name = "inc", strategy = "increment")
	@GeneratedValue(generator = "inc")
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	@ManyToMany(mappedBy = "courses")
	public Collection<Students> getStudents() {
		return students;
	}
	public void setStudents(Collection<Students> students) {
		this.students = students;
	}
	
}
