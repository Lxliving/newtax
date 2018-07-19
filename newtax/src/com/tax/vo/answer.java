package com.tax.vo;

import java.util.*;

public class answer {
	private String ansID;
	private String txt; 
	private Date date;				// In mysql parameter date has its own date format
	private int good;
	private int kept;
	
	public int getKeep() {
		return kept;
	}

	public void setKeep(int kept) {
		this.kept = kept;
	}

	public int getGood() {
		return good;
	}

	public void setGood(int good) {
		this.good = good;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTxt() {
		return txt;
	}

	public void setTxt(String txt) {
		this.txt = txt;
	}

	public String getAnsID() {
		return ansID;
	}

	public void setAnsID(String ansID) {
		this.ansID = ansID;
	}
}
