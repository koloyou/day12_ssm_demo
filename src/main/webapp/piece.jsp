<%--
  Created by IntelliJ IDEA.
  User: 黄jri
  Date: 2021/10/11
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <html>
        <head>
            <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" >

            <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" >

            <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js" ></script>
<%--            　　<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>--%>



            <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" ></script>

        </head>
            <body>
            <div class="container">
                <h3 style="text-align: center">海贼王</h3>
                <div style="text-align: right">
                    <a type="button" class="btn btn-success">添加</a>
                </div>
                <table class="table table-hover" id="onepiece">
                    <tr>
                        <th>编号</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>地址</th>
                        <th>介绍</th>
                        <th>操作</th>
                    </tr>

                    <c:forEach items="${onepieces}" var="piece">
                        <tr>
                            <td>${piece.id}</td>
                            <td>${piece.name}</td>
                            <td>${piece.gender}</td>
                            <td>${piece.addr}</td>
                            <td>${piece.info}</td>
                            <td>
                                <a type="button" class="btn btn-info">修改</a>
                                <a type="button" class="btn btn-danger">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            </body>
    </html>
