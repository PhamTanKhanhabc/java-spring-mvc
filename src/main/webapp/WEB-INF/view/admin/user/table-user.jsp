<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Table Users</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container mt-5">
                    <!-- container: khung chứa nội dung, căn giữa và có padding hai bên -->
                    <!-- mt-5: margin-top = tạo khoảng cách phía trên (~48px) -->

                    <div class="row">
                        <!-- row: tạo một hàng ngang trong hệ thống grid Bootstrap -->
                        <div class="col-12 mx-auto">
                            <!-- col-md-6: trên màn hình trung bình trở lên (md ≥ 768px) chiếm 6/12 cột = 50% -->
                            <!-- col-12: trên màn hình nhỏ (mobile) chiếm 12/12 = full width -->
                            <!-- mx-auto: margin-left + margin-right auto → căn giữa cột -->
                            <div class="d-flex justify-content-between">
                                <!-- d-flex: display:flex | justify-content-between: căn hai đầu (space-between) -->
                                <h3>Table users</h3>
                                <a href="/admin/user/create" class="btn btn-primary">Create a user</a>
                            </div>
                            <hr />
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <td>ID</td>
                                        <td>Email</td>
                                        <td>Full Name</td>
                                        <td>Action</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="user" items="${users1}"> <!-- users1: truyen qua controller -->
                                        
                                        <tr>
                                            <th>${user.id}</th>
                                            <td>${user.email}</td>
                                            <td>${user.fullName}</td>
                                            <td>
                                                <a href="/admin/user/${user.id}" class="btn btn-success">View</a> <!-- truyen qua controller -->
                                                <a href="/admin/user/update/${user.id}" class="btn btn-warning mx-2">Update</a>
                                                <a href="/admin/user/delete/${user.id}" class="btn btn-danger">Delete</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </body>

            </html>