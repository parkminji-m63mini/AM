<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<style>
	#notLogin{
		width: 100%;
		height: 800px;
		line-height: 600px;
		text-align: center;
	}
	
	#list-table td{
		cursor: pointer;
	}
</style>

</head>
<body>
	<!-- ------------------------- header ---------------------------- -->
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<%-- 		<c:choose>n `		7777777777777777777777777777777777777777		<c:when test="${empty loginMember }">
		<!--  로그인 x -->
		<div id="notLogin">로그인 후 이용해주세요</div>
		</c:when>
		
		<c:when test="${!empty loginMember.memberName }"> --%>
	<div class="container board-list">
	
        <div style="height:650px">
            <table class="table table-hover table-striped" id="list-table">
                <thead>
                    <tr>
                        <th>이름 </th>
                        <th>이메일 </th>
                        <th>전화번호</th>
                     	<th>시급</th>
                    </tr>
                </thead>
                <tbody>
                	<c:choose>
                		<c:when test="${empty personnelList}">
                			<tr>
	                			<td colspan="4">직원을 추가해주세요</td>      			
                			</tr>
                		</c:when>
                		<c:otherwise>
                			<c:forEach var="personnelList" items="${personnelList}">
	                			<tr>
	                				<td>${personnelList.memberNo}</td>
	                				<td>${personnelList.memberName}</td>
	                				<td>${personnelList.memberEmail}</td>
	                				<td>${personnelList.memberPhone}</td>
	                			</tr>
	                		</c:forEach>
	                	</c:otherwise>
                	</c:choose>
                </tbody>
            </table>
            <div class="bottom_btn" style="text-align: center;" >
		        <button id="addEmployee" class="btn btn-primary py-3 px-4">직원추가</button>
            </div>
        </div>

        <hr>
	</div>
<%-- 	</c:when>
			</c:choose> --%>
	<!-- ------------------------- footer ---------------------------- -->

   	<script>
   		$("#addEmployee").click(function(){
   			swal("hello world");
   		});
   		
   		
   		$("#deleteEmployee").click(function(){
   			swal("hello world");
   		});
   		
		$(function(){
			$("#list-table td").on("click", function(){
			
				var memberNo = $(this).parent().children().eq(0).text();
		
				var boardUrl = 
					"${contextPath}/personnel/" memberNo + "personnelView";					

				location.href = boardUrl;
			});
		});	
   		
   		
   	</script>
</body>
</html>