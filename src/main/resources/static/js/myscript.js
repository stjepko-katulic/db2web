

$(".btn-provjera-odgovora").on("click", function() {
    var ukupnoPitanja = parseInt($("#ukupno-pitanja").val(),10);
    var sviOdgovori = $(".form-check-input");
    var tocnoOdgovorenihPitanjaUkupno=0;

    var pitanje;


    for (let i=1; i<ukupnoPitanja+1; i++) {
        var upit="[pitanje='"+ i + "']";
        var pitanjeSOdgovorima = document.querySelectorAll(upit);
        var odgovorenoTocnih=0;

        var brojPotrebnihTocnihOdgovora=$(".pitanje")[i-1].getAttribute("brojTocnihOdgovora");

        pitanjeSOdgovorima.forEach(function (item, index) {
            var isTocan = item.getAttribute("tocnost");

            if (isTocan==="DA" && item.checked) {
                odgovorenoTocnih++;
            }
        });


        if (brojPotrebnihTocnihOdgovora==="1") {
            if (odgovorenoTocnih>0) {
                ($(".img-correct")[i-1]).classList.remove("hidden-img");
                ($(".img-wrong")[i-1]).classList.add("hidden-img");
                tocnoOdgovorenihPitanjaUkupno++;
                $(".panel-blue")[i-1].style.backgroundColor="#a0e8af";
            } else {
                ($(".img-wrong")[i-1]).classList.remove("hidden-img");
                ($(".img-correct")[i-1]).classList.add("hidden-img");
                $(".panel-blue")[i-1].style.backgroundColor="#f9bec7";
            }
        } else {
            if (odgovorenoTocnih===2 && $($(".pitanje")[i-1]).find(".form-check-input:checked").length===2) {
                ($(".img-correct")[i-1]).classList.remove("hidden-img");
                ($(".img-wrong")[i-1]).classList.add("hidden-img");
                tocnoOdgovorenihPitanjaUkupno++;
                $(".panel-blue")[i-1].style.backgroundColor="#a0e8af";
            } else {
                ($(".img-wrong")[i-1]).classList.remove("hidden-img");
                ($(".img-correct")[i-1]).classList.add("hidden-img");
                $(".panel-blue")[i-1].style.backgroundColor="#f9bec7";
            }
        }


    }

    // nakon provjere rezultata disabla se gumb "Provjeri odgovore" i radio buttoni
    $("#provjera").prop({'disabled': true});

    $.each(sviOdgovori, function (index, value) {
        $(value).prop({'disabled': true});
    });

    // obracunavanje rezultata
    obracunIspita(tocnoOdgovorenihPitanjaUkupno);

    //ispis rezultata
    ispisRezultata(tocnoOdgovorenihPitanjaUkupno, ukupnoPitanja);

});




function obracunIspita(tocnoOdgovorenihPitanjaUkupno) {

    //document.documentElement.scrollTop = 0;
    window.scrollTo(0,0);

    $(".rezultati-form")[0].classList.remove("rezultati-form-hidden");

    $( ".rezultati-form" ).animate({
        top: "0px",
    }, 2000, function() {
        $(".rezultati-form")[0].style.position="sticky";
    });

    var naslovContainer=$(".naslov-container")[0];
    var alertWarning = $(".rezultati-form")[0];
    var naslovContainerTop = window.getComputedStyle(naslovContainer).getPropertyValue("top");
    var alertWarningHeight = window.getComputedStyle(alertWarning).getPropertyValue("height");

    var novaVrijednostTop = parseInt(naslovContainerTop.substr(0, naslovContainerTop.indexOf("px"))) +
        parseInt(alertWarningHeight.substr(0, alertWarningHeight.indexOf("px"))) + "px";

    $(".naslov-container")[0].style.top=novaVrijednostTop;
}



function ispisRezultata(tocnoOdgovorenihPitanjaUkupno, ukupnoPitanja) {
    var ukupnoNetocnihOdgovora = ukupnoPitanja - tocnoOdgovorenihPitanjaUkupno;
    var postotakRijesenogIspita = Math.round(tocnoOdgovorenihPitanjaUkupno / ukupnoPitanja*100);

    document.getElementById("rezultatParagraf").innerHTML = "Riješili ste "
        + tocnoOdgovorenihPitanjaUkupno + " od ukupno " +
        ukupnoPitanja + " pitanja (" + postotakRijesenogIspita + "%).";

    if (postotakRijesenogIspita>64) {
        document.getElementById("daLiJeIspitPolozen").innerHTML = "Uspješno ste položili ispit! (PASS)";
    } else {
        document.getElementById("daLiJeIspitPolozen").innerHTML = "Nažalost, niste položili ispit (FAIL)";
        document.getElementById("image-thumb").src="img/thumb-down.png";
    }


}