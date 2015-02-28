package org.jeecgframework.web.activiti.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.web.activiti.entity.Leave;
import org.jeecgframework.web.activiti.service.LeaveService;
import org.jeecgframework.web.activiti.util.Variable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


/**
 * @Description: TODO(请假流程控制类)
 * @author liujinghua
 */
@Controller
@RequestMapping("/leaveController")
public class LeaveController extends BaseController{
	
	@Autowired
	private LeaveService leaveService;
	
	@Autowired
	private RuntimeService runtimeService;
	
	@Autowired
    protected TaskService taskService;

	private static final Logger logger = Logger.getLogger(LeaveController.class);
	
	/**
     * 请假流程启动
     * @param deploymentId 流程部署ID
     */
	@RequestMapping(params = "leaveStart")
	@ResponseBody
	public AjaxJson leaveStart(Leave leave, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		
		leave.setUserId("admin");
		
		//请假流程启动
		leaveService.leaveWorkFlowStart(leave);
		
		String message = "流程启动成功";
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 完成任务表单选择
	 */
	@RequestMapping(params = "taskCompletePageSelect")
	public ModelAndView taskCompletePageSelect(@RequestParam("jspPage") String jspPage,
			@RequestParam("processInstanceId") String processInstanceId,
			@RequestParam("taskId") String taskId,HttpServletRequest request,Model model) {
			
			ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(processInstanceId).active().singleResult();
			
			String businessKey = processInstance.getBusinessKey();

			Leave leave = leaveService.getLeave(new Long(businessKey));
		
			model.addAttribute("processInstanceId", processInstanceId);
			model.addAttribute("taskId", taskId);
			model.addAttribute("leave",leave);
			
			System.out.println(jspPage);
		
			return new ModelAndView("jeecg/activiti/my/"+jspPage.substring(0, jspPage.lastIndexOf(".")));
	}
	
	/**
     * 完成任务
     * @param deploymentId 流程部署ID
     */
	@RequestMapping(params = "completeTask")
	@ResponseBody
	public AjaxJson completeTask(String taskId,Variable var,HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		
		Map<String, Object> variables = var.getVariableMap();
        taskService.complete(taskId, variables);
		
		//请假流程启动
		//leaveService.leaveWorkFlowStart(leave);
		
		String message = "办理成功";
		j.setMsg(message);
		return j;
	}
	
}
