package com.tax.test;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Stack;

import com.tax.controller.listShare;
import com.tax.dao.DB_cons;
import com.tax.dao.DB_share;
import com.tax.vo.consult;
import com.tax.vo.share;

public class run {
	public static void main(String args[]) {
		DB_cons dc = new DB_cons();
		ArrayList<consult> out = dc.listCons();
//		dc.getByID(1);
	}
}
