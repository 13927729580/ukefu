package com.ukefu.webim.service.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ukefu.webim.web.model.SaleStatus;

public abstract interface SaleStatusRepository extends JpaRepository<SaleStatus, String> {
	
	public abstract SaleStatus findByIdAndOrgi(String id, String orgi);

	public abstract List<SaleStatus> findByOrgi(String cate) ;
	
	public abstract List<SaleStatus> findByOrgiAndCate(String orgi, String cate) ;
	
	public abstract List<SaleStatus> findByOrgiAndActivityid(String orgi, String activityid) ;
	
	public abstract List<SaleStatus> findByOrgiAndCateAndActivityid(String orgi, String cate, String activityid) ;
	
	public abstract SaleStatus findByOrgiAndName(String orgi, String name) ;

}
