<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<html>
<header></header>
<body>

<c:if test="${empty param.isDeleted}">
    <div class="form-group" style="display: flex; justify-content: center;">
        <button class="btn btn-danger" style="margin-top: 20px; margin-right: 50px" onclick="window.location='/delete?dramaId=${param.dramaId}'">확인</button>
        <button class="btn btn-warning" style="margin-top: 20px;" onclick='javascript:window.close()'>취소</button>
    </div>
</c:if>
<c:if test="${not empty param.isDeleted}" >
    <b>삭제되었습니다.<br>페이지를 새로고침하여 확인하세요.</b>
</c:if>


</body>
</html>