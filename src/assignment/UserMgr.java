package assignment;

import java.sql.*;
import assignment.UserBean;

public class UserMgr {
	private String jdbc_driver = "com.mysql.jdbc.Driver";
	private String jdbc_url = "jdbc:mysql://localhost:3306/basicjsp";
	private String db_id = "jspid";
	private String db_pwd = "jsppass";
	
	public UserMgr() {
		// JDBC 드라이버 연결
		try {
			Class.forName(jdbc_driver);
		} catch(Exception e) {
			System.out.println("Fail to load JDBC DRIVER");
		}
	}
	
	public UserBean signIn(UserBean user) {
		// 로그인 메소드
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserBean userBean = new UserBean();
		
		try {
			conn = DriverManager.getConnection(jdbc_url, db_id, db_pwd);
			String sql = "select * from user where userId=? and userPwd=?";
			// 파라미터 값으로 넘어온 아이디와 비밀번호에 해당되는 유저의 모든 정보를 불러오는 sql문
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserPwd());
			
			rs = pstmt.executeQuery();
			
			rs.next();
			// 해당되는 result set은 한 개뿐이기 때문에 반복문을 사용하지 않음  
			userBean.setUserId(rs.getString("userId"));
			userBean.setUserName(rs.getString("userName"));
			userBean.setUserEmail(rs.getString("userEmail"));
			userBean.setUserPhone1(rs.getString("userPhone1"));
			userBean.setUserPhone2(rs.getString("userPhone2"));
			userBean.setUserPhone3(rs.getString("userPhone3"));
			userBean.setUserSMS(rs.getString("userSMS"));
			userBean.setUserAddr(rs.getString("userAddr"));
			userBean.setUserBirthYear(rs.getInt("userBirthYear"));
			userBean.setUserBirthMonth(rs.getInt("userBirthMonth"));
			userBean.setUserBirthDay(rs.getInt("userBirthDay"));
			// 화면에 띄울 모든 정보를 UserBean 객체에 setter로 삽입
		} catch(SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException sqle){}
			if(conn!=null)
				try{conn.close();}catch(SQLException sqle){}
			if(rs!=null)
				try{rs.close();}catch(SQLException sqle){}
		}
		
		return userBean;
		
	}
	
	public void insertUserInfo(UserBean user) {
		// 회원가입 메소드
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DriverManager.getConnection(jdbc_url, db_id, db_pwd);
			String sql = "insert into user values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			// 받아온 모든 정보를 DB에 저장하는 sql문
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserPwd());
			pstmt.setString(3, user.getUserPwdQ());
			pstmt.setString(4, user.getUserPwdA());
			pstmt.setString(5, user.getUserName());
			pstmt.setString(6, user.getUserEmail());
			pstmt.setString(7, user.getUserPhone1());
			pstmt.setString(8, user.getUserPhone2());
			pstmt.setString(9, user.getUserPhone3());
			pstmt.setString(10, user.getUserSMS());
			pstmt.setString(11, user.getUserAddr());
			pstmt.setInt(12, user.getUserBirthYear());
			pstmt.setInt(13, user.getUserBirthMonth());
			pstmt.setInt(14, user.getUserBirthDay());
			
			pstmt.executeUpdate();
		} catch(SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException sqle){}
			if(conn!=null)
				try{conn.close();}catch(SQLException sqle){}
		}
		
	}
	
	public String userIdFind(UserBean user) {
		// 아이디 찾기 메소드
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String userId = null;
		
		try {
			conn = DriverManager.getConnection(jdbc_url, db_id, db_pwd);
			String sql = "select userId from user where userName=? and userEmail=?";
			// 파라미터 값으로 넘어온 이름과 이메일에 해당되는 유저의 아이디를 불러오는 sql문
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2, user.getUserEmail());
			
			rs = pstmt.executeQuery();
			
			rs.next();
			userId = rs.getString("userId");
		} catch(SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException sqle){}
			if(conn!=null)
				try{conn.close();}catch(SQLException sqle){}
			if(rs!=null)
				try{rs.close();}catch(SQLException sqle){}
		}
		
		return userId;
		
	}
	
	public String userPwdQFind(UserBean user) {
		// 비밀번호찾기 질문 확인 메소드
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String userPwdQ = null;
		
		try {
			conn = DriverManager.getConnection(jdbc_url, db_id, db_pwd);
			String sql = "select userPwdQ from user where userId=?";
			// 파라미터 값으로 넘어온 아이디에 해당되는 유저의 비밀번호찾기 질문을 불러오는 sql문
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserId());
			
			rs = pstmt.executeQuery();
			
			rs.next();
			userPwdQ = rs.getString("userPwdQ");
		} catch(SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException sqle){}
			if(conn!=null)
				try{conn.close();}catch(SQLException sqle){}
			if(rs!=null)
				try{rs.close();}catch(SQLException sqle){}
		}
		
		return userPwdQ;
		
	}
	
	public String userPwdFind(UserBean user) {
		// 비밀번호 찾기 메소드
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String userPwd = null;
		
		try {
			conn = DriverManager.getConnection(jdbc_url, db_id, db_pwd);
			String sql = "select userPwd from user where userId=? and userPwdA=?";
			// 파라미터 값으로 넘어온 아이디와 비밀번호찾기 답에 해당되는 유저의 비밀번호를 불러오는 sql문
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserPwdA());
			
			rs = pstmt.executeQuery();
			
			rs.next();
			userPwd = rs.getString("userPwd");
		} catch(SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException sqle){}
			if(conn!=null)
				try{conn.close();}catch(SQLException sqle){}
			if(rs!=null)
				try{rs.close();}catch(SQLException sqle){}
		}
		
		return userPwd;
		
	}
}