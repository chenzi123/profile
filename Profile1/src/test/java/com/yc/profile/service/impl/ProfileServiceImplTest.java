package com.yc.profile.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.profile.entity.Profile;
import com.yc.profile.service.ProfileService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ProfileServiceImplTest {
	@Autowired
	private ProfileService profileService;
	
	@Test
	public void testFindAllProfile() {
		List<Profile> profile=profileService.findAllProfile();
		System.out.println(profile);
		assertNotNull(profile);
	}

	@Test
	public void testFindByIdProfile() {
		Profile profile=profileService.findByIdProfile(1);
		System.out.println(profile);
		assertNotNull(profile);
	}

	@Test
	public void testUpdate() {
		fail("Not yet implemented");
	}

}
