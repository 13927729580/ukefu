package com.ukefu.util.es;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.ukefu.webim.web.model.EkmKnowledgeMaster;
import com.ukefu.webim.web.model.Organ;
import com.ukefu.webim.web.model.User;

public class EkmDataBean implements java.io.Serializable{

	/**
	 * EKM 知识库
	 */
	private static final long serialVersionUID = -8610410476273340864L;
	
	private User user ;
	private Organ organ;
	
	private String type ;
	
	private String id ;	
	private int docs ;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Organ getOrgan() {
		return organ;
	}

	public void setOrgan(Organ organ) {
		this.organ = organ;
	}

	public int getDocs() {
		return docs;
	}

	public void setDocs(int docs) {
		this.docs = docs;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}