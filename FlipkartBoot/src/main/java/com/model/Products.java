package com.model;
// Generated Jun 11, 2019 4:21:47 PM by Hibernate Tools 5.1.7.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Products generated by hbm2java
 */
@Entity
@Table(name = "products", catalog = "flipkart")
public class Products implements java.io.Serializable {

	private long productId;
	private L3Category l3Category;
	private String productName;
	private String productSku;
	private float productPrice;
	private float productWeight;
	private String productDescription;
	private String productImageUrl;

	public Products() {
	}

	public Products(long productId, L3Category l3Category, String productName, String productSku, float productPrice,
			float productWeight) {
		this.productId = productId;
		this.l3Category = l3Category;
		this.productName = productName;
		this.productSku = productSku;
		this.productPrice = productPrice;
		this.productWeight = productWeight;
	}

	public Products(long productId, L3Category l3Category, String productName, String productSku, float productPrice,
			float productWeight, String productDescription, String productImageUrl) {
		this.productId = productId;
		this.l3Category = l3Category;
		this.productName = productName;
		this.productSku = productSku;
		this.productPrice = productPrice;
		this.productWeight = productWeight;
		this.productDescription = productDescription;
		this.productImageUrl = productImageUrl;
	}

	@Id

	@Column(name = "PRODUCT_ID", unique = true, nullable = false)
	public long getProductId() {
		return this.productId;
	}

	public void setProductId(long productId) {
		this.productId = productId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "L3_category_ID", nullable = false)
	public L3Category getL3Category() {
		return this.l3Category;
	}

	public void setL3Category(L3Category l3Category) {
		this.l3Category = l3Category;
	}

	@Column(name = "PRODUCT_NAME", nullable = false, length = 512)
	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Column(name = "PRODUCT_SKU", nullable = false, length = 512)
	public String getProductSku() {
		return this.productSku;
	}

	public void setProductSku(String productSku) {
		this.productSku = productSku;
	}

	@Column(name = "PRODUCT_PRICE", nullable = false, precision = 12, scale = 0)
	public float getProductPrice() {
		return this.productPrice;
	}

	public void setProductPrice(float productPrice) {
		this.productPrice = productPrice;
	}

	@Column(name = "PRODUCT_WEIGHT", nullable = false, precision = 12, scale = 0)
	public float getProductWeight() {
		return this.productWeight;
	}

	public void setProductWeight(float productWeight) {
		this.productWeight = productWeight;
	}

	@Column(name = "PRODUCT_DESCRIPTION", length = 1024)
	public String getProductDescription() {
		return this.productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	@Column(name = "PRODUCT_IMAGE_URL", length = 512)
	public String getProductImageUrl() {
		return this.productImageUrl;
	}

	public void setProductImageUrl(String productImageUrl) {
		this.productImageUrl = productImageUrl;
	}

}