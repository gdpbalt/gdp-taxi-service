<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:genericpage>
    <jsp:attribute name="title">
        add a driver
    </jsp:attribute>

    <jsp:attribute name="header">
        Add a new driver to list
    </jsp:attribute>

    <jsp:body>
        <form method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="">
            </div>
            <div class="mb-3">
                <label for="license_number" class="form-label">License number</label>
                <input type="text" class="form-control" id="license_number" name="license_number"
                       placeholder="">
            </div>
            <div class="mb-3">
                <label for="login" class="form-label">Login</label>
                <input type="text" class="form-control" id="login" name="login" placeholder="">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="text" class="form-control" id="password" name="password"
                       placeholder="">
            </div>
            <div class="mb-3">
                <input type="submit" class="btn btn-success" value="Add">
                <input type="submit" class="btn btn-danger"
                       onclick="window.history.go(-1); return false;" value="Cancel">
            </div>
        </form>
    </jsp:body>
</t:genericpage>
