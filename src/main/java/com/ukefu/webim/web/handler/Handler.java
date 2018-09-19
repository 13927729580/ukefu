package com.ukefu.webim.web.handler;

import static org.elasticsearch.index.query.QueryBuilders.termQuery;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.index.query.QueryStringQueryBuilder;
import org.elasticsearch.index.query.QueryStringQueryBuilder.Operator;
import org.elasticsearch.index.query.RangeQueryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.ukefu.core.UKDataContext;
import com.ukefu.util.UKTools;
import com.ukefu.util.UKView;
import com.ukefu.webim.service.cache.CacheHelper;
import com.ukefu.webim.service.repository.TablePropertiesRepository;
import com.ukefu.webim.service.repository.TenantRepository;
import com.ukefu.webim.web.handler.api.rest.QueryParams;
import com.ukefu.webim.web.model.SystemConfig;
import com.ukefu.webim.web.model.TableProperties;
import com.ukefu.webim.web.model.Tenant;
import com.ukefu.webim.web.model.User;


@Controller
@SessionAttributes
public class Handler {
	@Autowired
	private TenantRepository tenantRes;
	
	public final static int PAGE_SIZE_BG = 1 ;
	public final static int PAGE_SIZE_TW = 20 ;
	public final static int PAGE_SIZE_FV = 50 ;
	public final static int PAGE_SIZE_HA = 100 ;
	
	private long starttime = System.currentTimeMillis();
	
	public User getUser(HttpServletRequest request){
		User user = (User) request.getSession(true).getAttribute(UKDataContext.USER_SESSION_NAME)  ;
		if(user==null){
			String authorization = request.getHeader("authorization") ;
			if(StringUtils.isBlank(authorization) && request.getCookies()!=null){
				for(Cookie cookie : request.getCookies()){
					if(cookie.getName().equals("authorization")){
						authorization = cookie.getValue() ; break ;
					}
				}
			}
			if(!StringUtils.isBlank(authorization)){
				user = (User) CacheHelper.getApiUserCacheBean().getCacheObject(authorization, UKDataContext.SYSTEM_ORGI) ;
			}
			if(user==null){
				user = new User();
				user.setId(UKTools.getContextID(request.getSession().getId())) ;
				user.setUsername(UKDataContext.GUEST_USER+"_"+UKTools.genIDByKey(user.getId())) ;
				user.setOrgi(UKDataContext.SYSTEM_ORGI);
				user.setSessionid(user.getId()) ;
			}
		}else{
			user.setSessionid(user.getId()) ;
		}
		return user ;
	}
	
	/**
	 * 
	 * @param queryBuilder
	 * @param request
	 */
	public BoolQueryBuilder search(BoolQueryBuilder queryBuilder , ModelMap map, HttpServletRequest request){
		queryBuilder.must(termQuery("orgi", this.getOrgi(request))) ;
		
		//搜索框
		if(!StringUtils.isBlank(request.getParameter("q"))) {
			String q = request.getParameter("q") ;
			q = q.replaceAll("(OR|AND|NOT|:|\\(|\\))", "") ;
			if(!StringUtils.isBlank(q)){
				queryBuilder.must(QueryBuilders.boolQuery().must(new QueryStringQueryBuilder(q).defaultOperator(Operator.AND))) ;
				map.put("q", q) ;
			}
		}
		
		//筛选表单
		if(!StringUtils.isBlank(request.getParameter("filterid"))) {
			queryBuilder.must(termQuery("filterid", request.getParameter("filterid"))) ;
			map.put("filterid", request.getParameter("filterid")) ;
		}
		
		//批次
		if(!StringUtils.isBlank(request.getParameter("batid"))) {
			queryBuilder.must(termQuery("batid", request.getParameter("batid"))) ;
			map.put("batid", request.getParameter("batid")) ;
		}
		
		//活动
		if(!StringUtils.isBlank(request.getParameter("actid"))) {
			queryBuilder.must(termQuery("actid", request.getParameter("actid"))) ;
			map.put("actid", request.getParameter("actid")) ;
		}
		
		//业务状态
		if(!StringUtils.isBlank(request.getParameter("workstatus"))) {
			queryBuilder.must(termQuery("workstatus", request.getParameter("workstatus"))) ;
			map.put("workstatus", request.getParameter("workstatus")) ;
		}
		
		//拨打状态
		if(!StringUtils.isBlank(request.getParameter("callstatus"))) {
			queryBuilder.must(termQuery("callstatus", request.getParameter("callstatus"))) ;
			map.put("callstatus", request.getParameter("callstatus")) ;
		}
		
		//预约状态
		if(!StringUtils.isBlank(request.getParameter("apstatus"))) {
			queryBuilder.must(termQuery("apstatus", request.getParameter("apstatus"))) ;
			map.put("apstatus", request.getParameter("apstatus")) ;
		}
		
		RangeQueryBuilder rangeQuery = null ;
		//拨打时间区间查询
		if(!StringUtils.isBlank(request.getParameter("callbegin")) || !StringUtils.isBlank(request.getParameter("callend"))){
			
			if(!StringUtils.isBlank(request.getParameter("callbegin"))) {
				try {
					
					rangeQuery = QueryBuilders.rangeQuery("calltime").from(UKTools.dateFormate.parse(request.getParameter("callbegin")).getTime()) ;
				} catch (ParseException e) {
					
					e.printStackTrace();
				}
			}
			if(!StringUtils.isBlank(request.getParameter("callend")) ) {
				
				try {
					
					if(rangeQuery == null) {
						rangeQuery = QueryBuilders.rangeQuery("calltime").to(UKTools.dateFormate.parse(request.getParameter("callend")).getTime()) ;
					}else {
						rangeQuery.to(UKTools.dateFormate.parse(request.getParameter("callend")).getTime()) ;
					}
				} catch (ParseException e) {
					
					e.printStackTrace();
				}
				
			}
			map.put("callbegin", request.getParameter("callbegin")) ;
			map.put("callend", request.getParameter("callend")) ;
		}
		//预约时间区间查询
		if(!StringUtils.isBlank(request.getParameter("apbegin")) || !StringUtils.isBlank(request.getParameter("apend"))){
			
			if(!StringUtils.isBlank(request.getParameter("apbegin"))) {
				try {
					
					rangeQuery = QueryBuilders.rangeQuery("aptime").from(UKTools.dateFormate.parse(request.getParameter("apbegin")).getTime()) ;
				} catch (ParseException e) {
					
					e.printStackTrace();
				}
			}
			if(!StringUtils.isBlank(request.getParameter("apend")) ) {
				
				try {
					
					if(rangeQuery == null) {
						rangeQuery = QueryBuilders.rangeQuery("aptime").to(UKTools.dateFormate.parse(request.getParameter("apend")).getTime()) ;
					}else {
						rangeQuery.to(UKTools.dateFormate.parse(request.getParameter("apend")).getTime()) ;
					}
				} catch (ParseException e) {
					
					e.printStackTrace();
				}
				
				
				
			}
			map.put("apbegin", request.getParameter("apbegin")) ;
			map.put("apend", request.getParameter("apend")) ;
		}
		
		if(rangeQuery!=null) {
			queryBuilder.must(rangeQuery) ;
		}
		
		//外呼任务id
		if(!StringUtils.isBlank(request.getParameter("taskid"))) {
			queryBuilder.must(termQuery("taskid", request.getParameter("taskid"))) ;
			map.put("taskid", request.getParameter("taskid")) ;
		}
		//坐席
		if(!StringUtils.isBlank(request.getParameter("owneruser"))) {
			queryBuilder.must(termQuery("owneruser", request.getParameter("owneruser"))) ;
			map.put("owneruser", request.getParameter("owneruser")) ;
		}
		//部门
		if(!StringUtils.isBlank(request.getParameter("ownerdept"))) {
			queryBuilder.must(termQuery("ownerdept", request.getParameter("ownerdept"))) ;
			map.put("ownerdept", request.getParameter("ownerdept")) ;
		}
		//分配状态
		if(!StringUtils.isBlank(request.getParameter("status"))) {
			queryBuilder.must(termQuery("status", request.getParameter("status"))) ;
			map.put("status", request.getParameter("status")) ;
		}
		TablePropertiesRepository tpRes = UKDataContext.getContext().getBean(TablePropertiesRepository.class) ;
		
		if(!StringUtils.isBlank(request.getParameter("nasearch")) && !"".equals(request.getParameter("nasearch"))){
			BoolQueryBuilder organBu = new BoolQueryBuilder();
			List<TableProperties> tpList = tpRes.findByName(request.getParameter("nasearch"));
			if(tpList.size() > 0){
				for(TableProperties tp : tpList){
					if(!StringUtils.isBlank(request.getParameter("condition")) ){
						if(request.getParameter("condition").equals("scope")){//范围
							if(!StringUtils.isBlank(request.getParameter("nabegin")) ||!StringUtils.isBlank(request.getParameter("naend"))){
								RangeQueryBuilder tempRangeQuery = null ;
								if("distime".equals(tp.getFieldname())){
									if(!StringUtils.isBlank(request.getParameter("nabegin"))) {
											try {
												tempRangeQuery = QueryBuilders.rangeQuery(tp.getFieldname()).from(UKTools.dateFormate.parse(request.getParameter("nabegin")).getTime()) ;
											} catch (ParseException e) {
												// TODO Auto-generated catch block
												e.printStackTrace();
											}
									}
									if(!StringUtils.isBlank(request.getParameter("naend")) ) {
										if(tempRangeQuery == null) {
											try {
												tempRangeQuery = QueryBuilders.rangeQuery(tp.getFieldname()).to(UKTools.dateFormate.parse(request.getParameter("naend")).getTime()) ;
											} catch (ParseException e) {
												// TODO Auto-generated catch block
												e.printStackTrace();
											}
										}else {
											try {
												tempRangeQuery.to(UKTools.dateFormate.parse(request.getParameter("naend")).getTime()) ;
											} catch (ParseException e) {
												// TODO Auto-generated catch block
												e.printStackTrace();
											}
										}
									}
								}else{
									
									if(!StringUtils.isBlank(request.getParameter("nabegin"))) {
										tempRangeQuery = QueryBuilders.rangeQuery(tp.getFieldname()).from(request.getParameter("nabegin")) ;
									}
									if(!StringUtils.isBlank(request.getParameter("naend")) ) {
										if(tempRangeQuery == null) {
											tempRangeQuery = QueryBuilders.rangeQuery(tp.getFieldname()).to(request.getParameter("naend")) ;
										}else {
											tempRangeQuery.to(request.getParameter("naend")) ;
										}
									}
								}
								
								organBu.should(tempRangeQuery);
							}
						}else if(request.getParameter("condition").equals("equal")){//等于
							
							if(getDateFormat(request) == true){
								RangeQueryBuilder rangeQu = null ;
								
								try {
									rangeQu = QueryBuilders.rangeQuery(tp.getFieldname()).from(UKTools.dateFormate.parse(request.getParameter("convalue")).getTime()).to(UKTools.dateFormate.parse(request.getParameter("convalue")).getTime() + 1000);
									organBu.must(rangeQu);
								} catch (ParseException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
								
							}else{
								if("distime".equals(tp.getFieldname())){
									try {
										organBu.should(QueryBuilders.termQuery(tp.getFieldname(), UKTools.dateFormate.parse(request.getParameter("convalue")).getTime())) ;
									} catch (ParseException e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
								}else{
									organBu.should(QueryBuilders.termQuery(tp.getFieldname(), request.getParameter("convalue"))) ;
								}
							}
							
						}else if(request.getParameter("condition").equals("not")){//不等于
							
							
							if(getDateFormat(request) == true){
								RangeQueryBuilder rangeQu = null ;
								
								try {
									rangeQu = QueryBuilders.rangeQuery(tp.getFieldname()).from(UKTools.dateFormate.parse(request.getParameter("convalue")).getTime()).to(UKTools.dateFormate.parse(request.getParameter("convalue")).getTime() + 1000);
									queryBuilder.mustNot(rangeQu);
								} catch (ParseException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
								
							}else{
								if("distime".equals(tp.getFieldname())){
									try {
										queryBuilder.mustNot(QueryBuilders.termQuery(tp.getFieldname(), UKTools.dateFormate.parse(request.getParameter("convalue")).getTime())) ;
									} catch (ParseException e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
								}else{
									queryBuilder.mustNot(QueryBuilders.termQuery(tp.getFieldname(), request.getParameter("convalue"))) ;
								}
							}
							
							
							/*if("distime".equals(tp.getFieldname())){
								try {
									organBu.mustNot(QueryBuilders.termQuery(tp.getFieldname(), UKTools.dateFormate.parse(request.getParameter("convalue")).getTime())) ;
								} catch (ParseException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							}else{
								organBu.mustNot(QueryBuilders.termQuery(tp.getFieldname(), request.getParameter("convalue"))) ;
							}*/
						}
					}
				}
				queryBuilder.must(organBu) ;
			}
		}
		map.addAttribute("nasearch", request.getParameter("nasearch"));
		map.addAttribute("condition", request.getParameter("condition"));
		map.addAttribute("convalue", request.getParameter("convalue"));
		map.addAttribute("nabegin", request.getParameter("nabegin"));
		map.addAttribute("naend", request.getParameter("naend"));

		return queryBuilder ;
	}
	
	public boolean getDateFormat(HttpServletRequest request){
		boolean convertSuccess=true;
		// 指定日期格式为四位年/两位月份/两位日期，注意yyyy/MM/dd区分大小写；
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			// 设置lenient为false. 否则SimpleDateFormat会比较宽松地验证日期，比如2007/02/29会被接受，并转换成2007/03/01
	      format.setLenient(false);
	      format.parse(request.getParameter("convalue"));
		} catch (ParseException e) {
		   // 如果throw java.text.ParseException或者NullPointerException，就说明格式不对
	       convertSuccess=false;
		} 
		return convertSuccess;
		
	}
	
	public User getIMUser(HttpServletRequest request , String userid , String nickname){
		User user = (User) request.getSession(true).getAttribute(UKDataContext.IM_USER_SESSION_NAME)  ;
		if(user==null){
			user = new User();
			if(!StringUtils.isBlank(userid)){
				user.setId(userid) ;
			}else{
				user.setId(UKTools.getContextID(request.getSession().getId())) ;
			}
			if(!StringUtils.isBlank(nickname)){
				user.setUsername(nickname);
			}else{
				user.setUsername(UKDataContext.GUEST_USER+"_"+UKTools.genIDByKey(user.getId())) ;
			}
			user.setSessionid(user.getId()) ;
		}else{
			user.setSessionid(UKTools.getContextID(request.getSession().getId())) ;
		}
		return user ;
	}
	
	
	
	public void setUser(HttpServletRequest request , User user){
		request.getSession(true).removeAttribute(UKDataContext.USER_SESSION_NAME) ;
		request.getSession(true).setAttribute(UKDataContext.USER_SESSION_NAME , user) ;
	}
	

	/**
	 * 创建系统监控的 模板页面
	 * @param page
	 * @return
	 */
	public UKView createAdminTempletResponse(String page) {
		return new UKView("/admin/include/tpl" , page);
	}
	/**
	 * 创建系统监控的 模板页面
	 * @param page
	 * @return
	 */
	public UKView createAppsTempletResponse(String page) {
		return new UKView("/apps/include/tpl" , page);
	}
	
	/**
	 * 创建系统监控的 模板页面
	 * @param page
	 * @return
	 */
	public UKView createEntIMTempletResponse(String page) {
		return new UKView("/apps/entim/include/tpl" , page);
	}
	
	public UKView createRequestPageTempletResponse(String page) {
		return new UKView(page);
	}
	
	/**
	 * 
	 * @param data
	 * @return
	 */
	public ModelAndView request(UKView data) {
    	return new ModelAndView(data.getTemplet()!=null ? data.getTemplet(): data.getPage() , "data", data) ;
    }

	public int getP(HttpServletRequest request) {
		int page = 0;
		String p = request.getParameter("p") ;
		if(!StringUtils.isBlank(p) && p.matches("[\\d]*")){
			page = Integer.parseInt(p) ;
			if(page > 0){
				page = page - 1 ;
			}
		}
		return page;
	}
	
	public int getPs(HttpServletRequest request) {
		int pagesize = PAGE_SIZE_TW;
		String ps = request.getParameter("ps") ;
		if(!StringUtils.isBlank(ps) && ps.matches("[\\d]*")){
			pagesize = Integer.parseInt(ps) ;
		}
		return pagesize;
	}
	
	public int getP(QueryParams params) {
		int page = 0;
		if(params!=null && !StringUtils.isBlank(params.getP()) && params.getP().matches("[\\d]*")){
			page = Integer.parseInt(params.getP()) ;
			if(page > 0){
				page = page - 1 ;
			}
		}
		return page;
	}
	
	public int getPs(QueryParams params) {
		int pagesize = PAGE_SIZE_TW;
		if(params != null && !StringUtils.isBlank(params.getPs()) && params.getPs().matches("[\\d]*")){
			pagesize = Integer.parseInt(params.getPs()) ;
		}
		return pagesize;
	}
	
	
	public int get50Ps(HttpServletRequest request) {
		int pagesize = PAGE_SIZE_FV;
		String ps = request.getParameter("ps") ;
		if(!StringUtils.isBlank(ps) && ps.matches("[\\d]*")){
			pagesize = Integer.parseInt(ps) ;
		}
		return pagesize;
	}
	
	public String getOrgi(HttpServletRequest request){	
		return getUser(request).getOrgi();
	}
	/**
	 * 机构id
	 * @param request
	 * @return
	 */
	public String getOrgid(HttpServletRequest request){	
		User u = getUser(request);
		return u.getOrgid();
	}
	
	public Tenant getTenant(HttpServletRequest request){
		return tenantRes.findById(getOrgi(request));
	}
	/**
	 * 根据是否租户共享获取orgi
	 * @param request
	 * @return
	 */
	public String getOrgiByTenantshare(HttpServletRequest request){	
		SystemConfig systemConfig = UKTools.getSystemConfig();
		if(systemConfig!=null&&systemConfig.isEnabletneant()&&systemConfig.isTenantshare()) {
			User user = this.getUser(request) ;
			return user.getOrgid();
    	}
		return getOrgi(request);
	}
	
	/**
	 * 判断是否租户共享
	 * @return
	 */
	public boolean isTenantshare(){	
		SystemConfig systemConfig = UKTools.getSystemConfig();
		if(systemConfig!=null&&systemConfig.isEnabletneant()&&systemConfig.isTenantshare()) {
			return true;
    	}
		return false;
	}
	
	/**
	 * 判断是否多租户
	 * @return
	 */
	public boolean isEnabletneant(){	
		SystemConfig systemConfig = UKTools.getSystemConfig();
		if(systemConfig!=null&&systemConfig.isEnabletneant()) {
			return true;
    	}
		return false;
	}
	/**
	 * 判断是否多租户
	 * @return
	 */
	public boolean isTenantconsole(){	
		SystemConfig systemConfig = UKTools.getSystemConfig();
		if(systemConfig!=null&&systemConfig.isEnabletneant()&&systemConfig.isTenantconsole()) {
			return true;
    	}
		return false;
	}

	public long getStarttime() {
		return starttime;
	}

	public void setStarttime(long starttime) {
		this.starttime = starttime;
	}
}
