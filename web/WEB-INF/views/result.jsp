<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
    <table>
        <tr>
            <th>법정동</th>
            <th>지번</th>
            <th>아파트명</th>
            <th>거래금액</th>
            <th>건축년도</th>
            <th>계약년도</th>
            <th>계약월</th>
            <th>계약일</th>
            <th>전용면적</th>
            <th>층</th>
        </tr>
        <c:forEach items="${requestScope.result}" var="item">
            <tr>
                <td><c:out value="${item.dong}"/></td>
                <td><c:out value="${item.jibun}"/></td>
                <td><c:out value="${item.apartmentname}"/></td>
                <td><c:out value="${item.dealamount}"/></td>
                <td><c:out value="${item.buildyear}"/></td>
                <td><c:out value="${item.dealyear}"/></td>
                <td><c:out value="${item.dealmonth}"/></td>
                <td><c:out value="${item.dealday}"/></td>
                <td>${item.areaforexclusiveuse}</td>
                <td>${item.floor}</td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>