$(document).ready(function(){
    // var menuButton = $("#menu_button");
    // var menu = $(".menu")

    $("#menu_button").on("click", toggleMenu);

    $(".menu_button").on("click", showChoices);

    $(".choice_display").on("click", ".non-terminal", showChoices);

    $(".choice_display").on("click", ".terminal", startSong)

    // $("#fa-play").on("click", resumeSong);
    // $("#fa-pause").on("click", pauseSong);
    
    // $("#fa-step-backward").on("click", backSong);
    // $("#fa-step-forward").on("click", forwardSong);

    // $("#fa-fast-backward").on("click", skipBack);
    // $("#fa-fast-forward").on("click", skipForward);





});

function toggleMenu(event){
    event.preventDefault();
    $(".menu").toggle();
}


function showChoices(event){
    event.preventDefault();
    $(".menu").hide();
    var typeLink = $(this);

    var request = $.ajax({
        url: typeLink.attr("href")
    });

    request.done(function(response){
        var choiceDisplay = $(".choice_display")
        choiceDisplay.html("");
        choiceDisplay.append(response);
    });
}

function startSong(event){
    event.preventDefault();
    var songLink = $(this);

    var request = $.ajax({
        url: songLink.attr("href"),
        method: "GET",
        data: {"song_id": songLink.attr("id")}
    });

}