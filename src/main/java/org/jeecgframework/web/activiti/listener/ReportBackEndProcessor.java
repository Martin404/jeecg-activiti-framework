package org.jeecgframework.web.activiti.listener;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;
import org.springframework.stereotype.Component;

@Component
public class ReportBackEndProcessor implements TaskListener{

	public void notify(DelegateTask delegateTask) {
		// TODO Auto-generated method stub
		System.out.println(delegateTask.getVariables() );
		System.out.println(delegateTask.getName() );
	}
}
