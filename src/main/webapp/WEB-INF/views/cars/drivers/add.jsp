<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericpage>
    <jsp:attribute name="title">
        add a drive to a car
    </jsp:attribute>

    <jsp:attribute name="header">
        Add a new driver to the car
    </jsp:attribute>

    <jsp:body>
        <%--@elvariable id="car" type="mate.controller.car.driver.AddDriverToCarController."--%>
        <form method="post">
            <input type="hidden" name="car_id" value="${car.getId()}">
            <div class="mb-3">
                <table class="table table-borderless">
                    <tbody>
                    <tr>
                        <td class="col-2">Id</td>
                        <td><c:out value="${car.getId()}"/></td>
                    </tr>
                    <tr>
                        <td>Model</td>
                        <td><c:out value="${car.getModel()}"/></td>
                    </tr>
                    <tr>
                        <td>Manufacturer name</td>
                        <td><c:out value="${car.getManufacturer().getName()}"/></td>
                    </tr>
                    <tr>
                        <td>Manufacturer country</td>
                        <td><c:out value="${car.getManufacturer().getCountry()}"/></td>
                    </tr>
                    <tr>
                        <td><label for="driver_id" class="form-label">Driver</label></td>
                        <td>
                            <select class="form-select" aria-label="Drivers" id="driver_id"
                                    name="driver_id">
                                <option selected>Open this select menu</option>
                                    <%--@elvariable id="drivers" type="mate.controller.car.driver.AddDriverToCarController"--%>
                                <c:forEach items="${drivers}" var="driver">
                                    <option value="${driver.getId()}"><c:out
                                            value="${driver.getName()}"/></option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="mb-3">
                <input type="submit" class="btn btn-success" value="Add">
                <input type="submit" class="btn btn-danger"
                       onclick="window.history.go(-1); return false;" value="Cancel">
            </div>
        </form>
    </jsp:body>
</t:genericpage>
