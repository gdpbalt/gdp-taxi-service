<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:genericpage>
    <jsp:attribute name="title">
        add a manufacturer
    </jsp:attribute>

    <jsp:attribute name="header">
        Add a new manufacturer to list
    </jsp:attribute>

    <jsp:body>
        <form method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="">
            </div>
            <div class="mb-3">
                <label for="country" class="form-label">Country</label>
                <input type="text" class="form-control" id="country" name="country" placeholder="">
            </div>
            <div class="mb-3">
                <input type="submit" class="btn btn-success" value="Add">
                <input type="submit" class="btn btn-danger"
                       onclick="window.history.go(-1); return false;" value="Cancel">
            </div>
        </form>
    </jsp:body>
</t:genericpage>
