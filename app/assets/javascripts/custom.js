$(function(){
    // #container配下のdivがグリットレイアウトで並びます
    $("#grid-content").vgrid({
        easing: "easeOutQuint",
        time: 500,
        delay: 20,
        fadeIn: {
            time: 300,
            delay: 50
        }
    });
});
