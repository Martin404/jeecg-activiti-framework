<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="easyui-layout" fit="true">
<div region="center" style="padding: 1px;">
<table id="waitingClaimTask" style="width: 700px; height: 300px">
	<thead>
		<tr>
			<th field="taskId" hidden="true">编号</th>
			<th field="name" width="50">任务名称</th>
			<th field="processDefinitionId" width="50">流程定义</th>
			<th field="opt" width="50">操作</th>
		</tr>
	</thead>
</table>

<script type="text/javascript">
		//查看流程历史
		function claimTask(taskId){
			confirm('activitiController.do?claimTask&taskId='+taskId,'确定签收吗？','waitingClaimTask');
		}
	    // 编辑初始化数据
		function getData(data){
			var rows = [];			
			var total = data.total;
			for(var i=0; i<data.rows.length; i++){
				rows.push({
					taskId: data.rows[i].taskId,
					name: data.rows[i].name,
					processDefinitionId: data.rows[i].processDefinitionId,
					opt: "[<a href=\"#\" onclick=\"claimTask('"+data.rows[i].taskId+"')\">签收</a>]"
				});
			}
			var newData={"total":total,"rows":rows};
			return newData;
		}
	    
		// 刷新
	    function reloadTable(){
	    	$('#waitingClaimTask').datagrid('reload');
	    }
	    
		// 设置datagrid属性
		$('#waitingClaimTask').datagrid({
			title: '待领任务列表',
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
	        url:'activitiController.do?waitingClaimTaskDataGrid',  
	        loadFilter: function(data){
	        	return getData(data);
	    	}
	        
	    }); 
	    //设置分页控件  
	    $('#waitingClaimTask').datagrid('getPager').pagination({  
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