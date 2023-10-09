package linkcode.shop.user.model;

public class UserLogin {
	
	private String uname;
	private String password;
	public UserLogin(String email, String password) {
		super();
		this.uname = email;
		this.password = password;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	

}
