<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
<title>Cart Page</title>
</head>
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<link rel="icon" href="images\truyum-logo-dark.png" />
<body>
    <header> truYum <img src="images\truyum-logo-light.png" hspace="10"> <nav>
    <a href="ShowMenuItemListAdmin">Menu</a> <a id="cart" href="ShowCart">Cart</a> </nav> </header>
    <h1>Cart</h1>

    <c:if test="${removeCartItemStatus==true }">
        <h3 id="cart-status">Item remove To Cart Successfully</h3>
    </c:if>
    <c:set var="cart" value="${cart}">
    </c:set>
    <table id="menu1">
        <col width="200px" />
        <col width="100px" />
        <col width="100px" />
        <tr>
            <th align="left">Name</th>
            <th align="left">Free Delivery</th>
            <th align="right">Price</th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td>${menuItem.getName()}</td>
                <td align="left"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="right"><f:formatNumber type="currency" currencySymbol="Rs."
                        minFractionDigits="2" value="${menuItem.getPrice()}"></f:formatNumber></td>
                <td align="center"><a href="RemoveCart?menuItemId=${menuItem.getId()}"
                    id="cart-link">Delete</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td></td>

            <td><b>Total</b></td>

            <td align="right"><b>Rs.${cart.getTotal()}</b></td>
        </tr>
    </table>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>