<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>发起请假申请</title>
<t:base type="jquery,easyui,tools"></t:base>
</head>
<body style="overflow-y: hidden" scroll="no">
<t:formvalid formid="formobj" dialog="true" layout="table" action="leaveController.do?completeTask">
	<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">流程发起人: </label></td>
			<td class="value" width="85%">
				${leave.userId}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">processInstanceId: </label></td>
			<td class="value" width="85%">
				${processInstanceId}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">taskId: </label></td>
			<td class="value" width="85%">
				${taskId}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label"> 请假原因: </label></td>
			<td class="value" width="85%">
				${leave.reason}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label"> 是否同意: </label></td>
			<td class="value" width="85%">
				<input id="keys" class="inputxt" name="keys" value="deptLeaderPass" datatype="s2-20" />	
				<input id="values" name="values" type="hidden" value="true">
				<input id="types" name="types" type="hidden" value="B">
				<input id="taskId" name="taskId" type="hidden" value="${taskId}">			
			</td>
		</tr>
	</table>
</t:formvalid>
</body>