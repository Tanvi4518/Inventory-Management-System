package linkcode.shop.user.model;

public class UserRegister {
	
	private String uname;
	private String password;
	private String cpassword;
	public UserRegister(String uname, String password, String cpassword) {
		super();
		this.uname = uname;
		this.password = password;
		this.cpassword = cpassword;
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
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	
	
	
	
}
