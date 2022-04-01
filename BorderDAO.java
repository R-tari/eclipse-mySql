package border;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.DriverManager;

public class BorderDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public BorderDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/bbs";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL, dbID,dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	public Border getBorder(int usernnum) {
		String SQL = "SELECT * FROM border WHERE usernum = ?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			pstmt.setInt(1, usernnum);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				Border border = new Border();
				border.setUsernum(rs.getInt(1));
				border.setTitle(rs.getString(2));
				border.setTxt(rs.getString(3));
				
				return border;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}


		public ArrayList<Border> getList(){
			
			String SQL = "SELECT * FROM Border ";                        
			ArrayList<Border> list = new ArrayList<Border>();
			try {
				PreparedStatement pstmt=conn.prepareStatement(SQL);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					Border Border = new Border();
					Border.setUsernum(rs.getInt(1));
					Border.setTitle(rs.getString(2));
					Border.setTxt(rs.getString(3));
					list.add(Border);
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}
		
		
		public int write(int usernum,String title,String txt) {
			String SQL = "INSERT INTO border VALUES(?,?,?)";
			try {
				PreparedStatement pstmt=conn.prepareStatement(SQL);
				pstmt.setInt(1, usernum);
				pstmt.setString(2, title);
				pstmt.setString(3, txt);				
				return pstmt.executeUpdate();
			}catch (Exception e) {
				e.printStackTrace();
			}
			return -1;//�����ͺ��̽� ����
		}
	
}


