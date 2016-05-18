package com.yc.profile.service;

import java.util.List;

import com.yc.profile.entity.Profile;

public interface ProfileService {
	public List<Profile> findAllProfile();      
	
	public Profile findByIdProfile(int id);         
	
	public int update(Profile profile);  
}
