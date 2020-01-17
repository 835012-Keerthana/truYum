<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
<title>Edit Menu Page</title>
<script type="text/javascript" src="js/script.js">
    
</script>
</head>
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<link rel="icon" href="images\truyum-logo-dark.png" />
<body>
    <c:set var="menuItem" value="${menuItem}"></c:set>
    <header> truYum <img src="images/truyum-logo-light.png" hspace="10"></img> <nav>
    <a href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
    <h1>Edit Menu Items</h1>
    <form name="menuItemForm" action="EditMenuItem" autocomplete="off"
        onsubmit="return validateMenuItemForm()" method="post">
        <input type="hidden" name="id" value="${menuItem.getId()}" />
        <table id="edit-menu">
            <tr>
                <td><label for="title"><b>Name</b></label></td>
            </tr>
            <tr>
                <td><input type="text" id="name" name="name" value="${menuItem.getName()}"
                    size="74" placeholder="Sandwich" /></td>
            </tr>
        </table>
        <table id="menu2">
            <tr>
                <td><label for="price"><b>Price</b></label></td>
                <td><label for="inStock"><b>Active</b></label></td>
                <td><label for="dateOfLaunch"><b>Date of launch</b></label></td>
                <td><label for="category"><b>Category</b></label></td>
            </tr>
            <tr>
                <td><input type="text" id="price" name="price" value="${menuItem.getPrice()}" /></td>
                <td><c:choose>
                        <c:when test="${menuItem.isActive()==true}">
                            <input type="radio" value="Yes" name="active" checked="checked" />Yes
                            <input type="radio" value="No" name="active" />No
                        </c:when>
                        <c:otherwise>
                            <input type="radio" value="Yes" name="active" />Yes
                            <input type="radio" value="No" name="active" checked="checked" />   No
                        </c:otherwise>
                    </c:choose></td>
                <td><f:formatDate value="${menuItem.getDateOfLaunch()}" var="dateOfLaunch"
                        pattern="dd/MM/yyyy"></f:formatDate> <input type="textbox" id="dateOfLaunch"
                    value="${dateOfLaunch}" name="dateOfLaunch" placeholder="22/04/2022" /></td>
                <td><select name="category" id="category">
                        <option value="${menuItem.getCategory()}">${menuItem.getCategory()}</option>
                        <option value="MainCourse" id="category">Main Course</option>
                        <option value="Starters" id="category">Starters</option>
                        <option value="Desserts" id="category">Desserts</option>
                        <option value="Drinks" id="category">Drinks</option>
                </select></td>
            </tr>
            <tr>
                <td><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">
                            <input type="checkbox" value="Yes" name="freeDelivery" checked="checked" />
                        </c:when>
                        <c:otherwise>
                            <input type="checkbox" value="No" name="freeDelivery" />

                        </c:otherwise>
                    </c:choose> <label for="freeDelivery"><b>Free Delivery</b></label></td>
            </tr>
            <tr>
                <td><input type="submit" value="Save" id="button1" /></td>
            </tr>
        </table>
    </form>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>