package com.yc.profile.mapper;

import java.util.List;

import com.yc.profile.entity.Profile;

public interface ProfileMapper {

	List<Profile> getAllProfile();

	Profile getByIdProfile(int id);

	int getUpdate(Profile profile);

}
