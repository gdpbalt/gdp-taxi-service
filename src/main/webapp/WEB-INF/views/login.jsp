<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:loginpage>
    <jsp:attribute name="title">
        login page
    </jsp:attribute>

    <jsp:body><%--@elvariable id="errorMessage" type="taxi.controller.LoginController"--%>
        <form method="post">
            <p class="text-danger">
                ${errorMessage}
            </p>
            <div class="form-group mt-3">
                <p>
                    <label for="login">Please enter your login:</label>
                    <input type="text" class="form-control" id="login" name="login" required>
                </p>
            </div>

            <div class="form-group mt-3">
                <p>
                    <label for="password">Please enter your password:</label>
                    <input type="password" class="form-control" id="password" name="password"
                           required>
                </p>
            </div>

            <div class="form-group mt-3">
                <p>
                    <input type="submit" class="btn btn-primary" value="Login">
                </p>
            </div>

            <div class="text-center my-3">
                <div class="mb-2">
                    <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
                    <br/>
                </div>
            </div>
        </form>
    </jsp:body>
</t:loginpage>

