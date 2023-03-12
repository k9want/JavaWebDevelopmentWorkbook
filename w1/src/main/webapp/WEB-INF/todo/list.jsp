<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--태그 라이브러리 지사자 - 해당 선언이 있어야만 JSP에서 JSTL을 이용할 수 있다. --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List Page</h1>

<%--EL을 이용한 출력--%>

<%--${list[0].tno} --- ${list[0].title}--%>

<%--<h3>${"AAA" += "BBB"}</h3>--%>

<%--같은 결과 출력--%>
<%--<h4>${list[0].title}</h4>--%>
<%--<h4>${list[0].getTitle()}</h4>--%>

<ul>
    <c:forEach var="dto" items="${list}">
        <li>${dto}</li>
    </c:forEach>
</ul>


<%--begin/end를 이용한 반복문--%>
<ul>
    <c:forEach var="num" begin="1" end="10">
        <li>${num}</li>
    </c:forEach>
</ul>

<%--JSTL의 제어문--%>
<%--if else--%>
<c:if test="${list.size() % 2 == 0}">
    짝수
</c:if>
<c:if test="${list.size() % 2 != 0}">
    홀수
</c:if>

<%--choose - when, otherwise (java switch와 비슷)--%>
<c:choose>
    <c:when test="${list.size()+1 % 2 == 0}">
        짝수
    </c:when>
    <c:otherwise>
        홀수
    </c:otherwise>
</c:choose>

<c:set var="target" value="5"></c:set>

<ul>
    <c:forEach var="num" begin="1" end="10">
        <c:if test="${num == target}">
            <h4>num: ${num}</h4>
            <h4>target: ${target}</h4>
            num is target
        </c:if>
    </c:forEach>
</ul>
</body>
</html>
