<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools"></t:base>
<div class="easyui-layout" fit="true">
<div region="center" style="padding: 1px;">
	<img src="activitiController.do?traceImage&processInstanceId=${processInstanceId}&isIframe">
</div>
<div data-options="region:'south',split:true" style="height:180px;">
	<table id="taskHistoryList">
		<thead>
			<tr>
				<th field="name">名称</th>
				<th field="processInstanceId" width="50">流程实例ID</th>
				<th field="startTime" width="50">开始时间</th>
				<th field="endTime" width="50">结束时间</th>
				<th field="assignee" width="50">负责人</th>
				<th field="deleteReason" width="50">处理结果</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
	    // 编辑初始化数据
		function getData(data){
			var rows = [];			
			var total = data.total;
			for(var i=0; i<data.rows.length; i++){
				rows.push({
					name: data.rows[i].name,
					processInstanceId: data.rows[i].processInstanceId,
					startTime: data.rows[i].startTime,
					endTime: data.rows[i].endTime,
					assignee: data.rows[i].assignee,
					deleteReason: data.rows[i].deleteReason
				});
			}
			var newData={"total":total,"rows":rows};
			return newData;
		}
	    
		// 设置datagrid属性
		$('#taskHistoryList').datagrid({
			title: '流程历史跟踪',
	        idField: 'id',
	        fit:true,
	        loadMsg: '数据加载中...',
	        pageSize: 10,
	        pagination:true,
	        sortOrder:'asc',
	        rownumbers:true,
	        singleSelect:true,
	        fitColumns:true,
	        showFooter:true,
	        url:'activitiController.do?taskHistoryList&processInstanceId=${processInstanceId}',  
	        loadFilter: function(data){
	        	return getData(data);
	    	}
	        
	    }); 
	    //设置分页控件  
	    $('#taskHistoryList').datagrid('getPager').pagination({  
	        pageSize: 10,  
	        pageList: [10,20,30],  
	        beforePageText: '',  
	        afterPageText: '/{pages}',
	        displayMsg: '{from}-{to}共{total}条',
	        showPageList:true,
	        showRefresh:true,
	        onBeforeRefresh:function(pageNumber, pageSize){
	            $(this).pagination('loading');
	            $(this).pagination('loaded');
	        }
	    });
	</script>
</div>
</div>