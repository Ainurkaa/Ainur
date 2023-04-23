<%--
  Created by IntelliJ IDEA.
  User: ainur
  Date: 4/23/23
  Time: 12:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="kz.bitlab.techorda.entity.BitlabShop" %><%--
  Created by IntelliJ IDEA.
  User: ainur
  Date: 4/9/23
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@include file="head.jsp"%>
  <title>Title</title>
</head>
<body>
<%@include file="navbar1.jsp"%>
<div class = "row-mt-5" style=" margin-top:20px ; margin-bottom: 20px; ">
  <div class = "col-15">

    <button type="button" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#addTask" style="margin-left: 700px">
       Login
    </button>

    <div class="modal fade" id="addTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="staticBackdropLabel">Login Page</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <%@include file="AddLogin.jsp"%>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
 <div style="display: flex; flex-wrap: wrap; width: 70%; margin: 0 auto;">
    <div class="card text-center mb-3" style = "text-align: center; width: 27%;margin-left:60px;margin-right:25px">
      <div class="card-body" >
        <h5 class="card-header">Macbook Pro 2020</h5>
        <h4 class="card-text-success" style="color: forestgreen; margin-top: 14px; margin-bottom: 14px">$1499.99</h4>
          <p class="card-text" style="margin-bottom: 5px ;font-size: 15px">8 GB RAM</p>
          <p class="card-text" style="margin-bottom: 5px;font-size: 15px">256 GB SSD</p>
          <p class="card-text" style="font-size: 15px">Intel Core i7</p>
        <a href="#" class="btn btn-success">Buy Now</a>
    </div>
  </div>
   <div class="card text-center mb-3" style = "text-align: center; width: 27%;margin-right:25px">
     <div class="card-body" >
       <h5 class="card-header">ASUS TUF GAMING</h5>
       <h4 class="card-text-success" style="color: forestgreen; margin-top: 14px; margin-bottom: 14px">$999.99</h4>
       <p class="card-text" style="margin-bottom: 5px ;font-size: 15px">16 GB RAM</p>
       <p class="card-text" style="margin-bottom: 5px;font-size: 15px">512 GB SSD</p>
       <p class="card-text" style="font-size: 15px">AMD Ryzen 5</p>
       <a href="#" class="btn btn-success">Buy Now</a>
     </div>
   </div>
   <div class="card text-center mb-3" style = "text-align: center; width: 27%;">
     <div class="card-body" >
       <h5 class="card-header">Apple Iphone 12 Pro</h5>
       <h4 class="card-text-success" style="color: forestgreen; margin-top: 14px; margin-bottom: 14px">$1099.99</h4>
       <p class="card-text" style="margin-bottom: 5px ;font-size: 15px">6 GB RAM</p>
       <p class="card-text" style="margin-bottom: 5px;font-size: 15px">128 GB Memory</p>
       <p class="card-text" style="font-size: 15px">Super Retina XDR Display</p>
       <a href="#" class="btn btn-success">Buy Now</a>
     </div>
   </div>
   <div class="card text-center mb-3" style = "text-align: center; width: 27%;margin-left:60px;margin-right:25px">
     <div class="card-body" >
       <h5 class="card-header">XIAOMI Redmi Note 8</h5>
       <h4 class="card-text-success" style="color: forestgreen; margin-top: 14px; margin-bottom: 14px">$199.99</h4>
       <p class="card-text" style="margin-bottom: 5px ;font-size: 15px">6 GB RAM</p>
       <p class="card-text" style="margin-bottom: 5px;font-size: 15px">64 GB Memory</p>
       <p class="card-text" style="font-size: 15px">Android 9 Pie</p>
       <a href="#" class="btn btn-success">Buy Now</a>
     </div>
   </div>
   <div class="card text-center mb-3" style = "text-align: center;  width: 27%;margin-right:25px">
     <div class="card-body" >
       <h5 class="card-header">XIAOMI Redmi Note 10</h5>
       <h4 class="card-text-success" style="color: forestgreen; margin-top: 14px; margin-bottom: 14px">$299.99</h4>
       <p class="card-text" style="margin-bottom: 5px ;font-size: 15px">8 GB RAM</p>
       <p class="card-text" style="margin-bottom: 5px;font-size: 15px">128 GB Memory</p>
       <p class="card-text" style="font-size: 15px">Android 11</p>
       <a href="#" class="btn btn-success">Buy Now</a>
     </div>
   </div>
   <div class="card text-center mb-3" style = "text-align: center; width: 27%;">
     <div class="card-body" >
       <h5 class="card-header">MSI Prestige 15</h5>
       <h4 class="card-text-success" style="color: forestgreen; margin-top: 14px; margin-bottom: 14px">$1999.99</h4>
       <p class="card-text" style="margin-bottom: 5px ;font-size: 15px">Intel Core i7</p>
       <p class="card-text" style="margin-bottom: 5px;font-size: 15px">1024 GB Memory</p>
       <p class="card-text" style="font-size: 15px">32 GB RAM</p>
       <a href="#" class="btn btn-success">Buy Now</a>
     </div>
   </div>
 </div>

    <tbody>
    <%
      List<BitlabShop> shop = (List<BitlabShop>)request.getAttribute("shop");
      for(BitlabShop shop1:shop){
    %>
    <tr>
      <th scope="row"><%=shop1.getId()%></th>
      <td><%=shop1.getName()%></td>
      <td><%=shop1.getDescription()%></td>
      <td><%=shop1.getPrice()%></td>

    </tr>
    <%
      }
    %>
    </tbody>
</body>

</html>
