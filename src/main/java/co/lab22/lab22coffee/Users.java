package co.lab22.lab22coffee;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

@Entity
@NamedQuery(name="find_all_users",query="select u from Users u")
public class Users {
	@Id  // this is referring to the primary key for hibernate
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Integer id;
	private String firstname;
	private String lastname;
	private String email;
	private String phone;
	private String password;
	public String getfirstname() {
		return firstname;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setfirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getlastname() {
		return lastname;
	}
	public void setlastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getphone() {
		return phone;
	}
	public void setphone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Users(String firstname, String lastname, String email, String phone, String password) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}
	public Users() {
		super();
	}
	@Override
	public String toString() {
		return "Users [firstname=" + firstname + ", lastname=" + lastname + ", email=" + email + ", phone="
				+ phone + ", password=" + password + "]";
	}
	
	
	
}

