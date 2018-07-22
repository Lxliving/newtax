package com.tax.dao;
import java.sql.*;
import java.util.ArrayList;

import com.tax.comm.DBUtil;
import com.tax.vo.*;
public class DB_cons {
	public DB_cons() {}
	
	DBUtil db = new DBUtil();
	public void addCons(consult cons) {
		PreparedStatement pstm = null;
		String sql = "insert into consult(consID,consName,consDetil,seenNum,ansNum,keptNum,date) values (?,?,?,?,?,?,?)";
		try {
			pstm = db.getConPst(sql);
			//设置参数
			pstm.setInt(1, cons.getConsID());
			pstm.setString(2, cons.getConsName());
			pstm.setString(3, cons.getConsDetail());
			pstm.setInt(4, cons.getSeenNum());
			pstm.setInt(5, cons.getAnsNum());
			pstm.setInt(6, cons.getKeptNum());
			pstm.setDate(7, (Date) cons.getDate());
			pstm.executeUpdate();
			System.out.println("添加一条数据到consult");
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(pstm, null);
		}
	}
	public void update(consult cons) {
		//用以用户(提问者本身)修改咨询问题和内容
		PreparedStatement pstm = null;
		String sql = "update consult set consDetil = ? where consID = ?";
		try {
			pstm = db.getConPst(sql);
			pstm.setString(1,cons.getConsDetail());
			pstm.setInt(2, cons.getConsID());
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(pstm,null);
		}
	}
	public consult get(String consName) {
		//根据问题名称找到问题，用于引擎搜索
		consult cons = new consult();
		ResultSet rs = null;
		PreparedStatement pstm = null;
		try {
			String sql = "select * from consult where consName = ' "+ consName+ "'";
			pstm = db.getConPst(sql);
			//rs保存结果集
			rs = pstm.executeQuery();
			while(rs.next()) {
				cons.setConsID(rs.getInt("consID"));
				cons.setConsName(rs.getString("consName"));
				cons.setConsDetail(rs.getString("consDetil"));
				cons.setSeenNum(rs.getInt("seenNum"));
				cons.setAnsNum(rs.getInt("ansNum"));
				cons.setKeptNum(rs.getInt("keptNum"));
				cons.setDate(rs.getDate("date"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.close(pstm,null);
		}
		return cons;
	}
	public consult getByID(int consID) {
		//根据咨询问题ID找到问题。用于根据user查找consult
		consult cons = new consult();
		ResultSet rs = null;
		PreparedStatement pstm = null;
		try {
			String sql = "select * from consult where consID = ' "+ consID + "'";
			pstm = db.getConPst(sql);
			//rs保存结果集
			rs = pstm.executeQuery();
			while(rs.next()) {
				cons.setConsID(rs.getInt("consID"));
				cons.setConsName(rs.getString("consName"));
				cons.setConsDetail(rs.getString("consDetil"));
				cons.setSeenNum(rs.getInt("seenNum"));
				cons.setAnsNum(rs.getInt("ansNum"));
				cons.setKeptNum(rs.getInt("keptNum"));
				cons.setDate(rs.getDate("date"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.close(pstm,null);
		}
		return cons;
	}
	public ArrayList<consult> getToList(ArrayList<Integer> consIDArr){
		int len = consIDArr.size();
		ArrayList<consult> arr = new ArrayList<consult>();
		for(int i=0; i<len; i++) {
			arr.add(getByID(consIDArr.get(i)));
		}
		return arr;
	}
	
	public ArrayList<consult> listCons(){
		ArrayList<consult> arrCons = new ArrayList<consult>();
		PreparedStatement pstm = null;
		
		DB_category dca = new DB_category();
		try {
			String sql = "select * from consult order by seenNum desc";
			pstm = db.getConPst(sql);
			ResultSet res = pstm.executeQuery();
			while(res.next()) {
				consult cons = new consult();
				cons.setConsID(res.getInt("consID"));
				cons.setConsName(res.getString("consName"));
				cons.setConsDetail(res.getString("consDetil"));
				cons.setSeenNum(res.getInt("seenNum"));
				cons.setAnsNum(res.getInt("ansNum"));
				cons.setKeptNum(res.getInt("keptNum"));
                cons.setDate(res.getDate("date"));
//				cons.setCategory(dca.getCate(cons.getConsID()));
				arrCons.add(cons);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.close(pstm,null);
		}
		dca.listCateInArr(arrCons);
		return arrCons;
	}
}
