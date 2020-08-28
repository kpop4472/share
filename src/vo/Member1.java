package vo;

import java.util.Date;

public class Member1 {
	private String name;
	private String id;
	private String password;
	private String phone;
	
	public Member1() {}
	
	
	public Member1(String name, String id, String password, String phone) {
		super();
		this.name = name;
		this.id = id;
		this.password = password;
		this.phone = phone;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}


	@Override
	public String toString() {
		return "Member [name=" + name + ", id=" + id + ", password=" + password + ", phone=" + phone + "]";
	}
	
	
}
