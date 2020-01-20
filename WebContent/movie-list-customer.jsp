<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Customer Movie List</title>
<link rel="shortcut icon" href="images/logo.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>
    <header>
    <p class="heading">Movie Cruiser</p>
    <img src="images/logo.png" /> <nav> <a href="ShowMovieListCustomer" class="movies">Movies</a>
    <a href="ShowFavorite" class="favorites">Favorites</a> </nav> </header>

    <h1 class="movie-text">Movies</h1>
    <c:if test="${addFavoriteStatus==true }">
        <h4 class="notification">Movie Added To Favorites Successfully</h4>
    </c:if>
    <table width="50" cellspacing="9" cellpadding="2" class=" movie-customer-table">
        <tr>
            <th align="left" col width="250"><b>Title</b></th>
            <th align="right"><b>Box Office</b></th>
            <th align="center"><b>Genre</b></th>
            <th align="center"><b>Has Teaser</b></th>
            <th align="center"><b>Action</b></th>

        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${ movie.getTitle()}</td>
                <td><f:formatNumber type="currency" value="${movie.getBoxOffice()}"
                        maxFractionDigits="0" /></td>
                <td align="center">${ movie. getGenre()}</td>
                <td align="center"><c:choose>
                        <c:when test="${movie.isHasTeaser()== 'true'}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>




                <td align="center"><a href="AddToFavorite?movieId=${movie.getMovieId()}">Add
                        to Favorite</a></td>

            </tr>
        </c:forEach>
    </table>
    <footer>
    <h2 class="footer-text">Copyright &copy; 2019</h2>
    </footer>

</body>
</html>