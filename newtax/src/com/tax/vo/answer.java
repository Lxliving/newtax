package com.tax.vo;

import java.util.*;

public class answer {
<<<<<<< HEAD
=======
	/* ansID,txt,date,good,kept,check */
	private String userID;
>>>>>>> a4bf238c131463c75b0e4281f0d8530279e21d22
	private int ansID;
	private String txt; 
	private Date date;				// In mysql parameter date has its own date format
	private int good;
	private int kept;
	private int checked;
	
	public answer(String userID,int ansID,String txt,Date date,int good,int kept,int checked ) {
		this.setUserID(userID);
		this.ansID=ansID;
		this.txt=txt;
		this.date=date;
		this.good=good;
		this.kept=kept;
		this.checked=checked;
	}
	
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

<<<<<<< HEAD
=======

	public int getCheck() {
		return checked;
	}

	public void setCheck(int checked) {
		this.checked = checked;
	}

>>>>>>> a4bf238c131463c75b0e4281f0d8530279e21d22
	public int getAnsID() {
		return ansID;
	}

	public void setAnsID(int ansID) {
		this.ansID = ansID;
	}
<<<<<<< HEAD
	public String toString() {
		String str = "The answerID is: "+ ansID+",\nThe answerText is: "+txt+",\ndate: "+date+
				"\ngoodNum: "+good+"\nkeptNum: "+kept;
		return str;
	}
=======

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

>>>>>>> a4bf238c131463c75b0e4281f0d8530279e21d22
}
