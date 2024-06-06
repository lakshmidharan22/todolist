package daoclass;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.rowset.serial.SerialBlob;

import dtoclass.Userdto;



public class userdao {
	public Connection getConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?user=root&password=root");
		return con;
	}

	public int SaveUser(Userdto u) throws Exception {
		
		Connection con = getConnection();
		PreparedStatement  pst = con.prepareStatement("insert into user values (?,?,?,?,?,?)");
		pst.setInt(1,u.getUid());
		pst.setString(2,u.getUname());
		pst.setString(3,u.getUmail());
		pst.setLong(4,u.getContact());
		pst.setString(5,u.getPassword());
		Blob b=new SerialBlob(u.getImage());
		pst.setBlob(6, b);

		return pst.executeUpdate();
	}

	public Userdto  findByEmail(String n)throws Exception{
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("select * from user where UserEmail=?");
		pst.setString(1, n);

		ResultSet rs=pst.executeQuery();
		Userdto j=new Userdto ();
		if(rs.next()) {
			j.setUid(rs.getInt(1));
			j.setUname(rs.getString(2));
			j.setUmail(rs.getString(3));
			j.setContact(rs.getLong(4));
			j.setPassword(rs.getString(5));
			Blob b=rs.getBlob(6);
			byte[] img=b.getBytes(1,(int)b.length());
			j.setImage(img);
			return j;
		}
		return null;

	}
	
	public int finduid() throws Exception {
		Connection con=getConnection();
	
		PreparedStatement pst=con.prepareStatement("SELECT MAX(UserID) FROM user");
		int id=0;
		
		ResultSet rs=pst.executeQuery();
		
		if(rs.next()) {
			id=rs.getInt(1);
		}
	
		
		return id+1 ;
		
	}

}