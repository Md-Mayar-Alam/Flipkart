package com.enums;

public enum PageType {
	HOME("home", "HomePage", "/homepage");
	
	/* Simple Enum Constructor */
	
	private String context;
	private String page;
	private String controllerPath;
	
	PageType(final String context, final String page, final String controllerPath){
		this.context = context;
		this.page = page;
		this.controllerPath = controllerPath;
	}
	
	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getControllerPath() {
		return controllerPath;
	}

	public void setControllerPath(String controllerPath) {
		this.controllerPath = controllerPath;
	}
}
