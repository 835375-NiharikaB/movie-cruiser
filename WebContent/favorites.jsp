<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Favourites</title>
<link rel="shortcut icon" href="images/logo.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>
    <header>
    <p class="heading">Movie Cruiser</p>
    <img src="images/logo.png" /> <nav> <a href="ShowMovieListCustomer" class="movies">Movies</a>
    <a href="ShowFavorite" class="favorites">Favorites</a> </nav> </header>




    <h1 class="movie-text">Favorites</h1>
    <c:if test="${removeFavoriteStatus==true }">
        <h4 class="notification">Movie Removed From Favorites Successfully</h4>
    </c:if>
    <c:set var="favorite" value="${favorite }"></c:set>
    <table width="50" cellspacing="9" cellpadding="2" class="favorites-table-value">
        <tr>
            <th align="left" col width="330"><b>Title</b></th>
            <th align="left" width="250"><b>Box Office</b></th>
            <th align="left" col width="250"><b>Genre</b></th>

        </tr>

        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${ movie.getTitle()}</td>
                <td><f:formatNumber type="currency" value="${movie.getBoxOffice()}"
                        maxFractionDigits="0" /></td>
                <td align="left">${movie.getGenre()}</td>






                <td align="center"><a href="RemoveFavorite?movieId=${movie.getMovieId()}">Delete</a></td>

            </tr>
        </c:forEach>
        <tr></tr>
        <tr>

            <td align="left"><b>No. of Favorites: ${favorite.getTotal()}</b></td>
        </tr>


    </table>
    <footer>
    <h2 class="footer-text">Copyright &copy; 2019</h2>
    </footer>

</body>
</html>
