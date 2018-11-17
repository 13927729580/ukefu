package com.ukefu.webim.service.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.ukefu.webim.web.model.CalloutSaleCount;

public interface CalloutSaleCountRepository extends JpaRepository<CalloutSaleCount,String>{
	
	public List<CalloutSaleCount> findByOrgi(String orgi);
	
	public List<CalloutSaleCount> findByOrgiAndDataid(String orgi, String dataid);
	
	@Modifying
	@Transactional
	@Query(value = "delete from CalloutSaleCount where orgi = ?1")
	public abstract void deleteByOrgi(String orgi) ;
}
