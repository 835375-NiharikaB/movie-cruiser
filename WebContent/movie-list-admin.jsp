<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin Movie List</title>
<link rel="shortcut icon" href="images/logo.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>
    <header>
    <p class="heading">Movie Cruiser</p>
    <img src="images/logo.png" /> <a class="movies" href="ShowMovieListAdmin"> Movies </a> </header>
    <h1 class="movie-text">Movies</h1>

    <table cellspacing="8" cellpadding=2 class="table-alignment">
        <tr>
            <th align="left" col width="300"><b>Title</b></th>
            <th align="right" col width="100"><b>Box Office</b></th>
            <th align="center" col width="80"><b>Active</b></th>
            <th align="center" col width="130"><b>Date of Launch</b></th>
            <th align="center" col width="100"><b>Genre</b></th>
            <th align="center" col width="100"><b>Has Teaser</b></th>
            <th align="center" col width="100"><b>Action</b></th>
        </tr>

        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${ movie.getTitle()}</td>
                <td align="right"><f:formatNumber type="currency"
                        value="${movie.getBoxOffice()}" maxFractionDigits="0" /></td>

                <td align="center"><c:choose>
                        <c:when test="${movie.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>

                <td align="center"><f:formatDate value="${movie.getDateOfLaunch()}"
                        pattern="dd/MM/yyyy" /></td>

                <td align="center">${ movie.getGenre()}</td>

                <td align="center"><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>

                <td align="center"><a href="ShowEditMovie?movieId=${movie.getMovieId()}">Edit</a></td>

            </tr>
        </c:forEach>


    </table>
    <footer>
    <h2 class="footer-text">Copyright &copy; 2019</h2>
    </footer>

</body>
</html>