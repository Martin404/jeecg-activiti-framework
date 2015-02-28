package org.jeecgframework.web.activiti.dao;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.jeecgframework.web.activiti.entity.Leave;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LeaveDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private static final Logger logger = Logger.getLogger(LeaveDao.class);
	
	public void save(Leave leave){
		Session sesson = sessionFactory.getCurrentSession();
		sesson.save(leave);
		logger.info("leave entity saved.."+leave.getReason());
	}
	
	public Leave getLeave(Long id){
		Session sesson = sessionFactory.getCurrentSession();
		return (Leave)sesson.load(Leave.class, id);
	}
}
