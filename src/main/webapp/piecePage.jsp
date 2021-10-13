<%--
  Created by IntelliJ IDEA.
  User: 黄jri
  Date: 2021/10/11
  Time: 21:09
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
            <button type="button" class="btn btn-success" onclick="addPiece()">添加</button>
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

            <c:forEach items="${pageInfo.list}" var="piece">
                <tr>
                    <td>${piece.id}</td>
                    <td>${piece.name}</td>
                    <td>${piece.gender}</td>
                    <td>${piece.addr}</td>
                    <td>${piece.info}</td>
                    <td>
                        <a type="button" class="btn btn-info">修改</a>
                        <button type="button" class="btn btn-danger" onclick="removePiece(${piece.id})" >删除</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <nav aria-label="Page navigation" style="text-align: center">
            <ul class="pagination">
                <li>
                    <c:if test="${pageInfo.pageNum>1}" >
                    <a href="${pageContext.request.contextPath}/piece/piecePage?pageNo=${pageInfo.pageNum-1}" aria-label="Previous" >
                        <span aria-hidden="true">&laquo;</span>
                        </c:if>
                    </a>
                </li>

                <c:forEach begin="1" end="${pageInfo.pages}" var="pageNo">
                <li><a href="${pageContext.request.contextPath}/piece/piecePage?pageNo=${pageNo}">${pageNo}</a></li>
                </c:forEach>

                <li>
<%--                    <c:if test="${pageInfo.pageNum<pageNum+1}">--%>
                    <a href="${pageContext.request.contextPath}/piece/piecePage?pageNo=${pageInfo.pageNum+1}" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
<%--                        </c:if>--%>
                    </a>
                </li>
            </ul>
        </nav>
        <div>${pageInfo}</div>
    </div>
    </body>
    <script type="text/javascript">
        function removePiece(id) {
            var ret = confirm("确定删除吗?,删除后无法恢复");
            if(ret){
                window.location="${pageContext.request.contextPath}/piece/removepieceById?id="+id;
            }

        }
        function addPiece() {
            alert("" <form >+"+
                "姓名:<input type='text'>"+"性别:<input type='radio' value='男'>+<input type='radio' value='女'>+地址:<input type='text'>+信息:<input type='text'>");

        }

    </script>
    </html>
