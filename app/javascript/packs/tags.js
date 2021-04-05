$(function() {
        $("body").click(function (e) {
            id = event.srcElement.id;

            var words = $("#source").text().split(id);
            var text = words.join("</h6><div id='highlight' >" +id+"<div><h6");
            $("#source").html(text);
            $("#highlight").css("background-color", "yellow");
        });
});