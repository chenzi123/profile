package com.yc.profile.action;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.yc.profile.entity.Profile;
import com.yc.profile.service.ProfileService;

@Controller("profileAction")
public class ProfileAction implements SessionAware,ModelDriven<Profile>{
	@Autowired
	private ProfileService profileService;
	private Map<String, Object> session;
	private Profile profile;


	//显示所有
	public String list(){
		List<Profile> profile=profileService.findAllProfile();
		LogManager.getLogger().debug("list请求成功...");
		session.put("profile", profile);
		return "list";
	}

	//明细
	public String detail(){
		LogManager.getLogger().debug("取到的id="+profile.getId());
		int id=profile.getId();
		Profile detailProfile=profileService.findByIdProfile(id);
		session.put("detailProfile", detailProfile);
		return "detail";
	}
	
	public String update(){
		LogManager.getLogger().debug("取到的id="+profile.getId());
		int id=profile.getId();
		Profile profiles=profileService.findByIdProfile(id);
		session.put("profiles", profiles);
		return "update";
	}
	
	public String updates(){
		profileService.update(profile);
		return "success";
	}

	@Override
	public Profile getModel() {
		profile=new Profile();
		return profile;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}


}
