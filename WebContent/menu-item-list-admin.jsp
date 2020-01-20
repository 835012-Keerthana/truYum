<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin Menu Page</title>
</head>
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<link rel="icon" href="images\truyum-logo-dark.png" />
<body>
    <header> truYum <img src="images\truyum-logo-light.png" hspace="10"></img> <nav>
    <a href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
    <h1>Menu Items</h1>
    <table id="menu">
        <col width="170px" />
        <tr>
            <th align="left">Name</th>
            <th align="right">Price</th>
            <th align="center">Active</th>
            <th align="center">Date of Launch</th>
            <th align="center">Category</th>
            <th align="center">Free Delivery</th>
            <th align="center">Action</th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td>${menuItem.getName()}</td>
                <td align="right"><f:formatNumber type="currency" currencySymbol="Rs."
                        minFractionDigits="0" groupingUsed="true" value="${menuItem.getPrice()}"></f:formatNumber></td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="center"><f:formatDate value="${menuItem.getDateOfLaunch()}"
                        pattern="dd/MM/yyyy"></f:formatDate></td>
                <td align="center">${menuItem.getCategory()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="center"><a href="ShowEditMenuItem?menuItemId=${menuItem.getId()}"
                    id="cart-link">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>