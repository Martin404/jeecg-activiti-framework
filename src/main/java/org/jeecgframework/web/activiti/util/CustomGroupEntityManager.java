package org.jeecgframework.web.activiti.util;

import java.util.List;

import org.activiti.engine.identity.Group;
import org.activiti.engine.impl.persistence.entity.GroupEntityManager;

public class CustomGroupEntityManager extends GroupEntityManager{
	
	@Override
	public List<Group> findGroupsByUser(String userId) {
		// TODO Auto-generated method stub
		System.out.println("liujinghua...... findGroupsByUser  ");
		return super.findGroupsByUser(userId);
	}

}
