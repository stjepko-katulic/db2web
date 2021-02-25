
window.onload=loadFunction;

function loadFunction() {
    var height=window.innerHeight;
    var width = window.innerWidth;

    document.getElementById("pdf-dokument").setAttribute("width", width.toString()+"px");
    document.getElementById("pdf-dokument").setAttribute("height", height.toString()+"px");
}




