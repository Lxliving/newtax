package com.tax.vo;
import java.util.*;
/**
 * @author hxdn
 * read -> professional understand
 */
public class read {
	private String readID;
	private String readName;
	private int seenNum;
	private int keptNum;
	private Date date;				//in mysql parameter 'data' has its own format
	private String text;
	
	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
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

	public void setKeptNum(int kept) {
		this.keptNum = kept;
	}

	public int getSeenNum() {
		return seenNum;
	}

	public void setSeenNum(int seen) {
		this.seenNum = seen;
	}

	public String getReadName() {
		return readName;
	}

	public void setReadName(String readName) {
		this.readName = readName;
	}

	public String getReadID() {
		return readID;
	}

	public void setReadID(String readID) {
		this.readID = readID;
	}
	
}
