package com.yc.profile.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.profile.entity.Profile;
import com.yc.profile.mapper.ProfileMapper;
import com.yc.profile.service.ProfileService;

@Service("profileService")
public class ProfileServiceImpl implements ProfileService{
	@Autowired
	private ProfileMapper profileMapper;
	
	@Override
	public List<Profile> findAllProfile() {
		return profileMapper.getAllProfile();
	}

	@Override
	public Profile findByIdProfile(int id) {
		return profileMapper.getByIdProfile(id);
	}

	@Override
	public int update(Profile profile) {
		return profileMapper.getUpdate(profile);
	}
	
}
