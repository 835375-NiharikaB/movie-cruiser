function validate() {
    var movieTitle = document.forms["movie"]["title"].value;
    var gross = document.forms["movie"]["Gross"].value;
    var dateOfLaunch = document.forms["movie"]["dateOfLaunch"].value;
    var genre = document.forms["movie"]["genre"].value;
    var regex = (/^.*[0-9].*$/);

    if (movieTitle == "") {
        alert("Title is required");
        return false;
    }

    if (movieTitle.length < 2 || movieTitle.length > 100) {
        alert("Title should have 2 to 100 characters");
        return false;
    }

    if (gross == "") {
        alert("Gross is required");
        return false;
    }

    if (!gross.match(regex)) {
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
