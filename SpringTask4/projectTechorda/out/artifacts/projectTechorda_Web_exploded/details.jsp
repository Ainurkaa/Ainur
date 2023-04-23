<%@ page import="kz.bitlab.techorda.entity.Item" %><%--
  Created by IntelliJ IDEA.
  User: ainur
  Date: 4/9/23
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.techorda.entity.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@include file="head.jsp"%>
  <title>Title</title>
</head>
<body>
<%@include file="navbar.jsp"%>
  <div class = "container mt-5 pb-5">
      <%
          Item items = (Item) request.getAttribute("item");
          if(items == null){
      %>
    <div class = "row">
       <div class = "col-6 mx-auto">
           <div class ="row">
             <div class="col-12">
           <div style=" margin-top:30px">
             <label  class="form-label">Name:</label>
             <input type="text" class="form-control"  >
           </div>
           <div style=" margin-top:30px">
             <label for="price" class="form-label">Description:</label>
             <input type="text" class="form-control" id="price" name="price" style="padding: 70px"   readonly value="smth">
           </div>
           <div style="margin-top:30px">
             <label for="amount" class="form-label">Deadline:</label>
             <input type="date" step = "0.01" class="form-control" id="amount" name="amount">
           </div>
           <div style="margin-top:30px">
               <label for="done" class="form-label">Done:</label>
               <input type="text" step = "0.01" class="form-control" id="done" name="done" readonly value="Да">
           </div>
                 <div class="row mt-3">
                     <div class="col-12">
                         <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editBook">
                             Edit Item
                         </button>
                         <!-- Button trigger modal -->
                         <button type="button" class="btn btn-danger btn-sm ms-2" data-bs-toggle="modal" data-bs-target="#deleteBook">
                             Delete Item
                         </button>
                     </div>
                 </div>
       </div>
    </div>
  </div>
  </div>
<%
    }else{
%>
<h3 class = "text-center">
    Item not found</h3>
<%
    }
%>

  </div>

</body>
</html>
