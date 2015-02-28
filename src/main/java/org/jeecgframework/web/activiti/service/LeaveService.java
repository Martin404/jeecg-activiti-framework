package org.jeecgframework.web.activiti.service;

import java.util.HashMap;
import java.util.Map;

import org.activiti.engine.IdentityService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.runtime.ProcessInstance;
import org.jeecgframework.web.activiti.dao.LeaveDao;
import org.jeecgframework.web.activiti.entity.Leave;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class LeaveService {
	
	@Autowired
	private LeaveDao leaveDao;
	
	@Autowired
    private IdentityService identityService;
	
	@Autowired
	private RuntimeService runtimeService;
	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	/**
	 * 启动请假流程
	 * @param leave
	 */
	public void leaveWorkFlowStart(Leave entity){
        leaveDao.save(entity);
        logger.debug("save entity: {}", entity);
        
        String businessKey = entity.getId().toString();
        ProcessInstance processInstance = null;
        try {
            // 用来设置启动流程的人员ID，引擎会自动把用户ID保存到activiti:initiator中
            identityService.setAuthenticatedUserId(entity.getUserId());

            Map<String, Object> variables = new HashMap<String, Object>();
            processInstance = runtimeService.startProcessInstanceByKey("leave", businessKey, variables);
            String processInstanceId = processInstance.getId();
            entity.setProcessInstanceId(processInstanceId);
            logger.debug("start process of {key={}, bkey={}, pid={}, variables={}}", new Object[]{"leave", businessKey, processInstanceId, variables});
        } finally {
            identityService.setAuthenticatedUserId(null);
        }
		
	}
	
	@Transactional(readOnly = true)
	public Leave getLeave(Long id){
		return leaveDao.getLeave(id);
	}
	
}
