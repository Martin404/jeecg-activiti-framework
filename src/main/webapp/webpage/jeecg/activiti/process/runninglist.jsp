<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="easyui-layout" fit="true">
<div region="center" style="padding: 1px;">
<table id="runningList" style="width: 700px; height: 300px">
	<thead>
		<tr>
			<th field="id">编号</th>
			<th field="processDefinitionId" width="50">流程定义</th>
			<th field="processInstanceId" width="50">流程实例</th>
			<th field="activityId" width="50">activityId</th>
			<th field="opt" width="50">操作</th>
		</tr>
	</thead>
</table>

<script type="text/javascript">
		//查看流程历史
		function viewHistory(processInstanceId){
			var url = "";
			var title = "流程历史";
			url = "activitiController.do?viewProcessInstanceHistory&processInstanceId="+processInstanceId+"&isIframe"
			addOneTab(title, url);
		}
	    // 编辑初始化数据
		function getData(data){
			var rows = [];			
			var total = data.total;
			for(var i=0; i<data.rows.length; i++){
				rows.push({
					id: data.rows[i].id,
					processDefinitionId: data.rows[i].processDefinitionId,
					processInstanceId: data.rows[i].processInstanceId,
					activityId: data.rows[i].activityId,
					opt: "[<a href=\"#\" onclick=\"viewHistory('"+data.rows[i].processInstanceId+"')\">历史</a>]"
				});
			}
			var newData={"total":total,"rows":rows};
			return newData;
		}
	    
		// 设置datagrid属性
		$('#runningList').datagrid({
			title: '运行中流程列表',
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
	        url:'activitiController.do?runningProcessDataGrid',  
	        loadFilter: function(data){
	        	return getData(data);
	    	}
	        
	    }); 
	    //设置分页控件  
	    $('#runningList').datagrid('getPager').pagination({  
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
	</script></div>
</div>