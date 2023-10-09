package linkcode.shop.user.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import linkcode.shop.db.ShopDb;
import linkcode.shop.user.model.Product;

public class ProductDao {
	
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public ProductDao(Connection ShopDb) {
		this.con=con;
	}
	public ProductDao() {
		
	}
	String msg=null;
	Connection con=ShopDb.getConnection();
	
	
	public String registerProduct(List<Product> plst) {
		 Product prod=plst.get(0);
		 
		 try {
				PreparedStatement pstate=con.prepareStatement("insert into productdata values(?,?,?,?,?)");
				pstate.setInt(1,prod.getId());
				pstate.setString(2,prod.getName());
				pstate.setString(3,prod.getCategory());
				pstate.setString(4,prod.getPrice());
				pstate.setString(5,prod.getImage());

				int k=pstate.executeUpdate();
				if(k>0)
				{
					msg="valid";
				}
				else
				{
					msg="Invalid";
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			return msg;
		
	}
	
	public List<Product> getAllProduct(){
		List<Product> plst=new ArrayList<Product>();
	
		try {
			query="select *from productdata";
			pst=this.con.prepareStatement(query);
			rs=pst.executeQuery();
			while(rs.next()) {
				Product row=new Product();
				row.setId(rs.getInt("id"));
				row.setName(rs.getString("name"));
				row.setCategory(rs.getString("category"));
				row.setPrice(rs.getString("price"));
				row.setImage(rs.getString("image"));
				
				plst.add(row);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return plst;
	}

}
