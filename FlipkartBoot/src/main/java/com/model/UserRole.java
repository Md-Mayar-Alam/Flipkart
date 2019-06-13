package com.model;
// Generated Jun 11, 2019 4:21:47 PM by Hibernate Tools 5.1.7.Final

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * UserRole generated by hbm2java
 */
@Entity
@Table(name = "user_role", catalog = "flipkart")
public class UserRole implements java.io.Serializable {

	private UserRoleId id;
	private Role role;
	private User user;

	public UserRole() {
	}

	public UserRole(UserRoleId id, Role role, User user) {
		this.id = id;
		this.role = role;
		this.user = user;
	}

	@EmbeddedId

	@AttributeOverrides({ @AttributeOverride(name = "userId", column = @Column(name = "USER_ID", nullable = false)),
			@AttributeOverride(name = "roleId", column = @Column(name = "ROLE_ID", nullable = false)) })
	public UserRoleId getId() {
		return this.id;
	}

	public void setId(UserRoleId id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ROLE_ID", nullable = false, insertable = false, updatable = false)
	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "USER_ID", nullable = false, insertable = false, updatable = false)
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}