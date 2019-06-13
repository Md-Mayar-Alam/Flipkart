package com.model;
// Generated Jun 11, 2019 4:21:47 PM by Hibernate Tools 5.1.7.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * User generated by hbm2java
 */
@Entity
@Table(name = "user", catalog = "flipkart")
public class User implements java.io.Serializable {

	private Long userId;
	private String registerType;
	private String profileType;
	private Date registrationTime;
	private Date lastSession;
	private Short passwordExpired;
	private Short field1;
	private Integer field2;
	private Long field3;
	private String field4;
	private Date field5;
	private UserRegistration userRegistration;
	private Set<UserRole> userRoles = new HashSet<UserRole>(0);

	public User() {
	}

	public User(Date registrationTime, Date lastSession, Date field5) {
		this.registrationTime = registrationTime;
		this.lastSession = lastSession;
		this.field5 = field5;
	}

	public User(String registerType, String profileType, Date registrationTime, Date lastSession, Short passwordExpired,
			Short field1, Integer field2, Long field3, String field4, Date field5, UserRegistration userRegistration,
			Set<UserRole> userRoles) {
		this.registerType = registerType;
		this.profileType = profileType;
		this.registrationTime = registrationTime;
		this.lastSession = lastSession;
		this.passwordExpired = passwordExpired;
		this.field1 = field1;
		this.field2 = field2;
		this.field3 = field3;
		this.field4 = field4;
		this.field5 = field5;
		this.userRegistration = userRegistration;
		this.userRoles = userRoles;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "USER_ID", unique = true, nullable = false)
	public Long getUserId() {
		return this.userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	@Column(name = "REGISTER_TYPE", length = 4)
	public String getRegisterType() {
		return this.registerType;
	}

	public void setRegisterType(String registerType) {
		this.registerType = registerType;
	}

	@Column(name = "PROFILE_TYPE", length = 32)
	public String getProfileType() {
		return this.profileType;
	}

	public void setProfileType(String profileType) {
		this.profileType = profileType;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "REGISTRATION_TIME", nullable = false, length = 26)
	public Date getRegistrationTime() {
		return this.registrationTime;
	}

	public void setRegistrationTime(Date registrationTime) {
		this.registrationTime = registrationTime;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "LAST_SESSION", nullable = false, length = 26)
	public Date getLastSession() {
		return this.lastSession;
	}

	public void setLastSession(Date lastSession) {
		this.lastSession = lastSession;
	}

	@Column(name = "PASSWORD_EXPIRED")
	public Short getPasswordExpired() {
		return this.passwordExpired;
	}

	public void setPasswordExpired(Short passwordExpired) {
		this.passwordExpired = passwordExpired;
	}

	@Column(name = "FIELD1")
	public Short getField1() {
		return this.field1;
	}

	public void setField1(Short field1) {
		this.field1 = field1;
	}

	@Column(name = "FIELD2")
	public Integer getField2() {
		return this.field2;
	}

	public void setField2(Integer field2) {
		this.field2 = field2;
	}

	@Column(name = "FIELD3")
	public Long getField3() {
		return this.field3;
	}

	public void setField3(Long field3) {
		this.field3 = field3;
	}

	@Column(name = "FIELD4", length = 256)
	public String getField4() {
		return this.field4;
	}

	public void setField4(String field4) {
		this.field4 = field4;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "FIELD5", nullable = false, length = 26)
	public Date getField5() {
		return this.field5;
	}

	public void setField5(Date field5) {
		this.field5 = field5;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "user")
	public UserRegistration getUserRegistration() {
		return this.userRegistration;
	}

	public void setUserRegistration(UserRegistration userRegistration) {
		this.userRegistration = userRegistration;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	public Set<UserRole> getUserRoles() {
		return this.userRoles;
	}

	public void setUserRoles(Set<UserRole> userRoles) {
		this.userRoles = userRoles;
	}

}
