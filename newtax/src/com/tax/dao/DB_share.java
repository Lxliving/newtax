package com.tax.dao;
import java.awt.List;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Stack;

import com.tax.comm.DBUtil;
import com.tax.vo.*;
/**
 * @author hxdn
 * 经验分享专栏
 */
public class DB_share {
	public DB_share() {}
	
	DBUtil db = new DBUtil();
	
	/**
	 * @param sha
	 * addshare 方法用于用户或者管理员向网站发布新的经验分享，并同步到数据库
	 */
	public void addShare(share sha) {
		
		PreparedStatement pstm = null;
		String sql = " insert into share (shareID,shareName,seenNum,keptNum,date,text) values(?,?,?,?,?,?);";
		try {
			pstm = db.getConPst(sql);
			//设置参数
			pstm.setString(1, sha.getShareID());
			pstm.setString(2, sha.getShareName());
			pstm.setInt(3, sha.getSeenNum());
			pstm.setInt(4, sha.getKeptNum());
			pstm.setDate(5,(Date)sha.getDate());
			pstm.setString(6, sha.getText());
			pstm.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(pstm, null);
		}
	}
	
	
	/**
	 * @param cons
	 * update 方法用于管理员或者用户有权限修改自己经验分享的部分信息（如果有权限的话）
	 */
	public void update(share sha) {
		//用以用户(提问者本身)修改咨询问题和内容
		PreparedStatement pstm = null;
		String sql = "update share set text = ? where shareID = ?";
		try {
			pstm = db.getConPst(sql);
			pstm.setString(1,sha.getText());
			pstm.setString(2, sha.getShareID());
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(pstm,null);
		}
	}
	
	public share get(String shareName) {
		//根据名称找到经验分享，用于引擎搜索
		share sha = new share();
		ResultSet rs = null;
		PreparedStatement pstm = null;
		try {
			String sql = "select * from share where shareName = '"+ shareName +"'";
			pstm = db.getConPst(sql);
			//rs保存结果集
			rs = pstm.executeQuery();
			while(rs.next()) {
				sha.setShareID(rs.getString("shareID"));
				sha.setShareName(rs.getString("shareName"));
				sha.setSeenNum(rs.getInt("seenNum"));
				sha.setKeptNum(rs.getInt("keptNum"));
				sha.setDate(rs.getDate("date"));
				sha.setText(rs.getString("text"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.close(pstm,null);
		}
		return sha;
	}
	public share getByID(String shareID) {
		//搜索ID找到经验分享，用于关系数据库中根据user查找其share
		share sha = new share();
		ResultSet rs = null;
		PreparedStatement pstm = null;
		try {
			String sql = "select * from share where shareID = '"+ shareID+"'";
			pstm = db.getConPst(sql);
			//rs保存结果集
			rs = pstm.executeQuery();
			while(rs.next()) {
				sha.setShareID(rs.getString("shareID"));
				sha.setShareName(rs.getString("shareName"));
				sha.setSeenNum(rs.getInt("seenNum"));
				sha.setKeptNum(rs.getInt("keptNum"));
				sha.setDate(rs.getDate("date"));
				sha.setText(rs.getString("text"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.close(pstm,null);
		}
		return sha;
	}
	public ArrayList<share> Query() {
		String sql = "select * from share order by seenNum desc";
		int rowCount ;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		ArrayList<share> al = new ArrayList<share>();
		
		try {
			pstm = db.getConPst(sql);
			rs = pstm.executeQuery();
			while(rs.next()) {
				share sha = new share();
				sha.setShareID(rs.getString("shareID"));
				sha.setShareName(rs.getString("shareName"));
				sha.setSeenNum(rs.getInt("seenNum"));
				sha.setKeptNum(rs.getInt("keptNum"));
				sha.setDate(rs.getDate("date"));
				sha.setText(rs.getString("text"));
				al.add(sha);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(pstm, null);
		}
		return al;
	}
}
