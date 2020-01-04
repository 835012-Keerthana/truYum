function valid() {
    var nameEdit = document.forms["user"]["title"].value;
    if (nameEdit == "") {
        alert("Title is required");
        return false;
    } else if ((nameEdit.length < 2) || (nameEdit.length > 65)) {
        alert("Title should have 2 to 65 characters");
        return false;
    }
    var priceEdit = document.forms["user"]["price"].value;
    if (priceEdit == "") {
        alert("Price is required");
        return false;
    } else if (isNaN(priceEdit)) {
        alert("Price has to be a number");
        return false;
    }
    var dateOflaunch = document.forms["user"]["dateOfLaunch"].value;
    if (dateOflaunch == "") {
        alert("Date of Launch is required");
        return false;
    }
    var categoryEdit = document.forms["user"]["category"].value;
    if (categoryEdit == "") {
        alert("Select one category");
        return false;
    }

}