<%@ page import="java.util.List" %>
<%@ page import="kz.bitlab.techorda.entity.Item" %><%--
  Created by IntelliJ IDEA.
  User: ainur
  Date: 4/9/23
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%String siteName = "Book Store";%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="head.jsp"%>
    <title>Title</title>
</head>
<body>
    <%@include file="navbar.jsp"%>
    <div class = "row-mt-5" style=" margin-top:20px ; margin-bottom: 20px; ">
        <div class = "col-15">
            <a class="navbar-brand" href="/">
                <%=siteName%>
            </a>
            <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#addTask">
               + Добавить задание
            </button>
            <div class="modal fade" id="addTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">New task</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <%@include file="addForm.jsp"%>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                            <button type="button" class="btn btn-primary">Добавить</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
  <div>
      <table class="table">
          <thead>
          <tr>
              <th scope="col">ID</th>
              <th scope="col">Наименование</th>
              <th scope="col">Крайний срок</th>
              <th scope="col">Выполнено</th>
              <th  style = "width:10%"scope="col">Детали</th>
          </tr>
          </thead>
          <tbody>
          <%
              List<Item> items = (List<Item>)request.getAttribute("items");
              for(Item item:items){
          %>
          <tr>
              <th scope="row"><%=item.getId()%></th>
              <td><%=item.getName()%></td>
              <td><%=item.getDescription()%></td>
              <td><%=item.getDeadlineDate()%></td>
              <td>
                  <a class = "btn btn-primary btn-sm" href = "/details?item_id=<%=item.getId()%>">DETAILS</a>
              </td>
          </tr>
          <%
              }
          %>

          </tbody>
      </table>
  </div>
</body>
</html>
