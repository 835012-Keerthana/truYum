<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
<title>Customer Page</title>
</head>
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<link rel="icon" href="images\truyum-logo-dark.png" />
<body>
    <c:if test="${addCartStatus==true }">
        <h3 id="cart-status">Item Added To Cart Successfully</h3>
    </c:if>
    <header> truYum <img src="images\truyum-logo-light.png" hspace="10"> <nav>
    <a href="ShowMenuItemListCustomer">Menu</a> <a id="cart" href="ShowCart">Cart</a> </nav> </header>
    <h1>Menu Items</h1>
    <table id="menu">
        <col width="160px" />
        <tr>
            <th align="left">Name</th>
            <th>Free Delivery</th>
            <th align="right">Price</th>
            <th>Category</th>
            <th>Action</th>
        </tr>

        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td>${menuItem.getName()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="right"><f:formatNumber type="currency" currencySymbol="Rs." minFractionDigits="2" value="${menuItem.getPrice()}"></f:formatNumber></td>


                <td align="center">${menuItem.getCategory()}</td>

                <td align="center"><a href="AddToCart?menuItemId=${menuItem.getId()}"
                    id="cart-link">Add To Cart</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>