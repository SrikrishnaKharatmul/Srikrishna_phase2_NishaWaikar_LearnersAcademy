package com.login.bean;

import java.io.Serializable;

public class classesbean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int sid;
	private String student_class;
	private String student_name;
	private String class_teacher;

	public int getsid() {
		return sid;
	}

	public void setsid(int sid) {
		this.sid = sid;
	}
	public String getstudent_class() {
		return student_class;
	}

	public void setstudent_class(String student_class) {
		this.student_class = student_class;
	}

	public String getclass_teacher() {
		return class_teacher;
	}

	public void setclass_teacher(String class_teacher) {
		this.class_teacher = class_teacher;
	}
	public String getstudent_name() {
		return student_name;
	}

	public void setstudent_name(String student_name) {
		this.student_name = student_name;
	}
}
