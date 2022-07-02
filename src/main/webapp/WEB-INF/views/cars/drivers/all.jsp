<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericpage>
    <jsp:attribute name="title">
        list of drivers for the car
    </jsp:attribute>

    <jsp:attribute name="header">
        Show all drivers for the car
    </jsp:attribute>

    <jsp:body>
        <%--@elvariable id="car" type="mate.controller.car.driver.ShowDriversForCarController."--%>
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
                </tbody>
            </table>
        </div>
        <div class="mb-3">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">License number</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${car.getDrivers()}" var="driver">
                <c:set var="car_id" value="${car.getId()}"/>
                <c:set var="driver_id" value="${driver.getId()}"/>
                <tr>
                    <th scope="row"><c:out value="${driver_id}"/></th>
                    <td><c:out value="${driver.getName()}"/></td>
                    <td><c:out value="${driver.getLicenseNumber()}"/></td>
                    <td>
                        <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                                data-bs-target="#deleteRecord${driver_id}">Delete
                        </button>

                        <div class="modal fade" id="deleteRecord${driver_id}" tabindex="-1"
                             aria-labelledby="deleteModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="deleteModalLabel">Delete</h5>
                                        <button type="button" class="btn-close"
                                                data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        Do you really want to delete the record with id=${driver_id} ?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">
                                            Close
                                        </button>
                                        <a type="button" class="btn btn-primary"
                                           href="${pageContext.request.contextPath}/cars/drivers/delete?car_id=${car_id}&driver_id=${driver_id}">Delete</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div>

        <div class="mb-3">
            <a type="button" class="btn btn-primary" href="${pageContext.request.contextPath}/cars/drivers/add?car_id=${car.getId()}">Add new</a>
            <a type="button" class="btn btn-danger" href="${pageContext.request.contextPath}/cars">Cancel</a>
        <div>
    </jsp:body>
</t:genericpage>
