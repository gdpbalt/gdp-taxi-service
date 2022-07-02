<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericpage>
    <jsp:attribute name="title">
        add a car
    </jsp:attribute>

    <jsp:attribute name="header">
        Add a new car to list
    </jsp:attribute>

    <jsp:body>
        <form method="post">
            <div class="mb-3">
                <label for="model" class="form-label">Model</label>
                <input type="text" class="form-control" id="model" name="model" placeholder="">
            </div>
            <div class="mb-3">
                <label for="manufacturer" class="form-label">Manufacturers</label>
                <select class="form-select" aria-label="Manufacturers" id="manufacturer"
                        name="manufacturer">
                    <option selected>Open this select menu</option>
                        <%--@elvariable id="manufacturers" type="mate.controller.car.AddCarController"--%>
                    <c:forEach items="${manufacturers}" var="manufacturer">
                        <option value="${manufacturer.getId()}">
                            <c:out value="${manufacturer.getName()}"/> from
                            <c:out value="${manufacturer.getCountry()}"/>
                        </option>
                    </c:forEach>
                </select>
            </div>
            <div class="mb-3">
                <input type="submit" class="btn btn-success" value="Add">
                <input type="submit" class="btn btn-danger"
                       onclick="window.history.go(-1); return false;" value="Cancel">
            </div>
        </form>
    </jsp:body>
</t:genericpage>
