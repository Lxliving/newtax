package com.tax.vo;

import java.util.*;

public class consult {
	private int consID;
	private String consName;
	private String consDetail;
	private int seenNum;
	private int ansNum;
	private int keptNum;
	private int xuanNum;
	private Date date;
	private ArrayList<String> category;
	
	public ArrayList<String> getCategory() {
		return category;
	}

	public void setCategory(ArrayList<String> category) {
		this.category = category;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getKeptNum() {
		return keptNum;
	}

	public void setKeptNum(int keptNum) {
		this.keptNum = keptNum;
	}

	public int getAnsNum() {
		return ansNum;
	}

	public void setAnsNum(int ansNum) {
		this.ansNum = ansNum;
	}
	public int getSeenNum() {
		return seenNum;
	}

	public void setSeenNum(int seenNum) {
		this.seenNum = seenNum;
	}
	public int getXuanNum() {
		return xuanNum;
	}

	public void setXuanNum(int xuanNum) {
		this.xuanNum = xuanNum;
	}
	

	public String getConsDetail() {
		return consDetail;
	}

	public void setConsDetail(String consDetail) {
		this.consDetail = consDetail;
	}

	public String getConsName() {
		return consName;
	}

	public void setConsName(String consName) {
		this.consName = consName;
	}

	public int getConsID() {
		return consID;
	}

	public void setConsID(int consID) {
		this.consID = consID;
	}
	
}
