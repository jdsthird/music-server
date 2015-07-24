$(document).ready(function(){
    // var menuButton = $("#menu_button");
    // var menu = $(".menu")

    $("#menu_button").on("click", toggleMenu);

    $(".menu_button").on("click", showChoices)

    // $("#fa-play").on("click", playSong);
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
    $(".menu").toggle();
    var typeLink = $(this);

    var request = $.ajax({
        url: typeLink.attr("href")
    });

    request.done(function(response){
        console.log(response);
        $(".container").append(response);
    });
}