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

                        <div class="d-flex justify-content-between">
                            <!-- col-md-6: trên màn hình trung bình trở lên (md ≥ 768px) chiếm 6/12 cột = 50% -->
                            <!-- col-12: trên màn hình nhỏ (mobile) chiếm 12/12 = full width -->
                            <!-- mx-auto: margin-left + margin-right auto → căn giữa cột -->
                            <h3>Table users</h3>
                            <a href="/admin/user/create" class="btn btn-primary">Create a user</a>
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
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>
                                            <button type="button" class="btn btn-success">View</button>
                                            <button type="button" class="btn btn-warning">Update</button>
                                            <button type="button" class="btn btn-danger">Delete</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>
                                            <button type="button" class="btn btn-success">View</button>
                                            <button type="button" class="btn btn-warning">Update</button>
                                            <button type="button" class="btn btn-danger">Delete</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </body>

            </html>