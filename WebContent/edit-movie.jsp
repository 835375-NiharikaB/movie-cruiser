<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Movie List</title>
<link rel="shortcut icon" href="images/logo.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
    <c:set var="movie" value="${movie}">
    </c:set>
    <header>
    <p class="heading">Movie Cruiser</p>
    <img src="images/logo.png" /> <a class="movies" href="ShowMovieListAdmin"> Movies</a> </header>
    <h1 class="movie-text">Edit Movie</h1>

    <form action="EditMovie" method="post" name="movieForm" onsubmit="return validateMovieForm()">
        <table class="form" cellspacing="5">
            <tr>
                <td><input type="hidden" name="movieId" value="${movie.getMovieId()}"></td>
            </tr>
            <tr>
                <td><label for="title"><b>Title<b></label></td>
            </tr>
            <tr>
                <td colspan="8"><input id="name" type="text" name="title"
                    value="${movie.getTitle()}" autofocus size=141 autocomplete="off"
                    placeholder="Avengers-End Game" spellcheck="false"></td>
            </tr>

            <tr>
                <td height="12px"></td>
            </tr>

            <tr>
                <td><label for="gross"><b>Gross ($)<b></label></td>
                <td><label> <b>Active</b></label></td>
                <td><label> <b>Date of Launch</b></label></td>
                <td><label> <b>Genre</b></label></td>
            </tr>



            <tr>
                <td><input id="boxOffice" type="text" name="boxOffice"
                    value="${movie.getBoxOffice()}" autofocus autocomplete="off" spellcheck="false"
                    placeholder="2787965087"></td>

                <td><c:choose>
                        <c:when test="${movie.isActive()==true }">
                            <input type="radio" name="active" value="Yes" checked="checked" />Yes <input
                                type="radio" name="active" value="No" />No
                    </c:when>
                        <c:otherwise>
                            <input type="radio" value="Yes" name="active" />Yes
                <input type="radio" value="No" name="active" checked="checked" />No</c:otherwise>
                    </c:choose></td>


                <f:formatDate value="${movie.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                    var="dateOfLaunch" />
                <td><input id="date" type="text" name="dateOfLaunch" value="${dateOfLaunch }"
                    autofocus size=20 autocomplete="off" placeholder="27/04/2022" spellcheck="false"></td>

                <td><select name="genre">
                        <option value="${movie.getGenre()}">${movie.getGenre()}</option>
                        <option value="Superhero">Superhero</option>
                        <option value="Science fiction">Science Fiction</option>
                        <option value="Romance">Romance</option>
                        <option value="Comedy">Comedy</option>
                        <option value="Adventure">Adventure</option>
                        <option value="Thriller">Thriller</option>

                </select></td>
            </tr>

            <tr>
                <td height="12px"></td>
            </tr>

            <tr>
                <td><c:choose>
                        <c:when test="${movie.isHasTeaser()==true }">
                            <input type="checkbox" value="Yes" name="hasTeaser" checked="checked" />
                            <b>Has Teaser</b>
                        </c:when>
                        <c:otherwise>
                            <input type="checkbox" name="hasTeaser" value="No">
                            <b>Has Teaser</b>
                        </c:otherwise>
                    </c:choose></td>
            </tr>

            <tr>
                <td height="12px"></td>
            </tr>

            <tr>
                <td><input type="submit" value="Save" name="submit" class="button" /></td>
            </tr>
        </table>


    </form>




    <footer>
    <h2 class="footer-text">Copyright &copy; 2019</h2>
    </footer>

</body>
</html>