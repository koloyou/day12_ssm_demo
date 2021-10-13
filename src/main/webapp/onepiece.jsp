<%--
  Created by IntelliJ IDEA.
  User: 黄jri
  Date: 2021/10/11
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>
        <head>
            <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" >

            <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" >

            <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js" ></script>

            <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" ></script>



        <script type="text/javascript">

            $(function () {
                $.ajax({
                    method:"GET",
                    url:"${pageContext.request.contextPath}/piece/pieces",
                    dataType:"json",
                    success:function (result) {
                        $.each(result,function (index, element) {
                        console.log("index==>" +index +"==element==>"+element.info)
                        $("#onepiece").append("  <tr>\n" +
                            "                    <td>"+element.id+"</td>\n" +
                            "                    <td>"+element.name+"</td>\n" +
                            "                    <td>"+element.gender+"</td>\n" +
                            "                    <td>"+element.addr+"</td>\n" +
                            "                    <td>"+element.info+"</td>\n" +
                            "                </tr>")
                        })

                    }


                })

            })
        </script>
        </head>
        <body>
        <div class="container">
            <h3 style="text-align: center">海贼王</h3>
            <table class="table table-hover" id="onepiece">
                <tr>
                    <th>编号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>地址</th>
                    <th>介绍</th>
                    <th>操作</th>
                </tr>



            </table>
        </div>
        </body>
    </html>
