<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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


${list}

</body>
</html>
