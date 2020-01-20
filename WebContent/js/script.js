function validateMovieForm() {
    var movieTitle = document.forms["movieForm"]["title"].value;
    var boxOffice = document.forms["movieForm"]["boxOffice"].value;
    var dateOfLaunch = document.forms["movieForm"]["dateOfLaunch"].value;
    var genre = document.forms["movieForm"]["genre"].value;
    var regex = (/^.*[0-9].*$/);

    if (movieTitle == "") {
        alert("Title is required");
        return false;
    }

    if (movieTitle.length < 2 || movieTitle.length > 100) {
        alert("Title should have 2 to 100 characters");
        return false;
    }

    if (boxOffice == "") {
        alert("Gross is required");
        return false;
    }

    if (!boxOffice.match(regex)) {
        alert("Gross has to be a number");
        return false;
    }

    if (dateOfLaunch == "") {
        alert("Date of Launch is required");
        return false;
    }

    if (genre == "") {
        alert("Select one genre");
        return false;
    }
}
