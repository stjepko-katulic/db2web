var num = "0";

window.onload = function () {
    document.getElementById("timer").innerHTML = "90:00";

    if (sessionStorage.getItem("isBtnZapocniRjesavatiDisabled") === "true") {
        document.getElementById("zapocni-rjesavanje").disabled = true;
        sessionStorage.setItem("isBtnZapocniRjesavatiDisabled", "false");
        stoperica();
    }

    if (sessionStorage.getItem("myNum") !== null) {
        return;
    }

    $("#provjera").prop({'disabled': true});
    var sviOdgovori = $(".form-check-input");

    $.each(sviOdgovori, function (index, value) {
        $(value).prop({'disabled': true});
    });
};


$(".btn-zapocni-rjesavanje").on("click", function () {

    // setiranje timera na 90 min
    document.getElementById("timer").innerHTML = "90:00";

    if (sessionStorage.getItem("myNum") == null) {
        sessionStorage.setItem("myNum", num);
    } else {
        sessionStorage.setItem("myNum", (parseInt(sessionStorage.getItem("myNum")) + 1).toString());
    }

    $("#provjera").prop({'disabled': false});
    var sviOdgovori = $(".form-check-input");

    $.each(sviOdgovori, function (index, value) {
        $(value).prop({'disabled': false});
    });

    sessionStorage.setItem("isBtnZapocniRjesavatiDisabled", "true");
});


$(".btn-provjera-odgovora").on("click", klikProvjeraOdgovora);


function klikProvjeraOdgovora(daLiJeIstekloVrijeme) {

    // alo je vrijeme isteklo onda se izvršava ovaj uvijet
    if (daLiJeIstekloVrijeme === true) {

        // ako je u trenutku isteka vremena bio otvoren modal box onda se on zatvara/hide
        $("#myModal").modal('hide');

        //odmah krenuti na provjeru odgovora
        provjeraOdgovora();

        //enablanje gumba zapocni rjesavanje
        document.getElementById("zapocni-rjesavanje").disabled = false;

        return;
    }

    // provjera da li je odgovoreno na sva pitanja i da li želimo nastaviti sa provjerom rješenja
    var ukupnoPitanja = parseInt($("#ukupno-pitanja").val(), 10);
    var neodgovorenaPitanja = "";

    for (let i = 1; i < ukupnoPitanja + 1; i++) {
        var brojPotrebnihTocnihOdgovora = $(".pitanje")[i - 1].getAttribute("brojTocnihOdgovora");

        if (brojPotrebnihTocnihOdgovora === "1") {
            if ($($(".pitanje")[i - 1]).find(".form-check-input:checked").length === 0) {
                neodgovorenaPitanja += $(".pitanje")[i - 1].getAttribute("id") + ", ";
            }
        } else {
            if ($($(".pitanje")[i - 1]).find(".form-check-input:checked").length < 2) {
                neodgovorenaPitanja += $(".pitanje")[i - 1].getAttribute("id") + ", ";
            }
        }
    }

    if (neodgovorenaPitanja !== "") {
        document.getElementById("svaNeodgovorenaPitanja").innerHTML = neodgovorenaPitanja.substr(0, neodgovorenaPitanja.length - 2);

        $("#myModal").modal({
            backdrop: 'static',
            keyboard: false
        });

    } else {
        provjeraOdgovora();
    }

    document.getElementById("zapocni-rjesavanje").disabled = false;
}


$("#btn-modal-provjeri-rezultate").on("click", function () {
    if (intervalTimera !== null) {
        clearInterval(intervalTimera);
    }

    provjeraOdgovora();
});


$("#btn-nastavi-rjesavanje-modal").on("click", function () {
    document.getElementById("zapocni-rjesavanje").disabled = true;
});


function provjeraOdgovora() {
    var ukupnoPitanja = parseInt($("#ukupno-pitanja").val(), 10);
    var sviOdgovori = $(".form-check-input");
    var tocnoOdgovorenihPitanjaUkupno = 0;

    var pitanje;

    for (let i = 1; i < ukupnoPitanja + 1; i++) {
        var upit = "[pitanje='" + i + "']";
        var pitanjeSOdgovorima = document.querySelectorAll(upit);
        var odgovorenoTocnih = 0;

        var brojPotrebnihTocnihOdgovora = $(".pitanje")[i - 1].getAttribute("brojTocnihOdgovora");

        pitanjeSOdgovorima.forEach(function (item, index) {
            var isTocan = item.getAttribute("tocnost");

            if (isTocan === "DA" && item.checked) {
                odgovorenoTocnih++;
            }
        });

        // označavanje točnih odgovora u trenutnom pitanju
        var upit2 = "[odgovoriNaPitanje='" + i + "']";
        var odgovoriNaTrenutnoPitanje = document.querySelectorAll(upit2);

        odgovoriNaTrenutnoPitanje.forEach(function (item, index) {
            var isOvoOdgovorKojiJeTocan = item.getAttribute("tocnost");

            if (isOvoOdgovorKojiJeTocan === "DA") {
                $(item).css("background-color", "#e9f5db");
            }
        });


        if (brojPotrebnihTocnihOdgovora === "1") {

            if (odgovorenoTocnih > 0) {
                tocnoOdgovorenihPitanjaUkupno = oznacavanjeTocnogOdgovora(i, tocnoOdgovorenihPitanjaUkupno);
            } else {
                oznacavanjeNetocnogOdgovora(i);
            }
        } else {
            if (odgovorenoTocnih === 2 && $($(".pitanje")[i - 1]).find(".form-check-input:checked").length === 2) {
                tocnoOdgovorenihPitanjaUkupno = oznacavanjeTocnogOdgovora(i, tocnoOdgovorenihPitanjaUkupno);
            } else {
                oznacavanjeNetocnogOdgovora(i);
            }
        }
    }


    function oznacavanjeTocnogOdgovora(i, tocnoOdgovorenihPitanjaUkupno) {
        ($(".img-correct")[i - 1]).classList.remove("hidden-img");
        ($(".img-wrong")[i - 1]).classList.add("hidden-img");
        tocnoOdgovorenihPitanjaUkupno++;
        $(".panel-blue")[i - 1].style.backgroundColor = "#a0e8af";
        return tocnoOdgovorenihPitanjaUkupno;
    }

    function oznacavanjeNetocnogOdgovora(i) {
        ($(".img-wrong")[i - 1]).classList.remove("hidden-img");
        ($(".img-correct")[i - 1]).classList.add("hidden-img");
        $(".panel-blue")[i - 1].style.backgroundColor = "#f9bec7";
    }


    // nakon provjere rezultata disabla se gumb "Provjeri odgovore" i radio/checkbox buttoni
    $("#provjera").prop({'disabled': true});

    $.each(sviOdgovori, function (index, value) {
        $(value).prop({'disabled': true});
    });

    // obracunavanje rezultata
    obracunIspita(tocnoOdgovorenihPitanjaUkupno);

    //ispis rezultata
    ispisRezultata(tocnoOdgovorenihPitanjaUkupno, ukupnoPitanja);
}


function obracunIspita(tocnoOdgovorenihPitanjaUkupno) {

    //document.documentElement.scrollTop = 0;
    window.scrollTo(0, 0);

    $(".rezultati-form")[0].classList.remove("rezultati-form-hidden");

    $(".rezultati-form").animate({
        top: "0px",
    }, 2000, function () {
        $(".rezultati-form")[0].style.position = "sticky";
    });

    var naslovContainer = $(".naslov-container")[0];
    var alertWarning = $(".rezultati-form")[0];
    var naslovContainerTop = window.getComputedStyle(naslovContainer).getPropertyValue("top");
    var alertWarningHeight = window.getComputedStyle(alertWarning).getPropertyValue("height");

    var novaVrijednostTop = parseInt(naslovContainerTop.substr(0, naslovContainerTop.indexOf("px"))) +
        parseInt(alertWarningHeight.substr(0, alertWarningHeight.indexOf("px"))) + "px";

    $(".naslov-container")[0].style.top = novaVrijednostTop;
}


function ispisRezultata(tocnoOdgovorenihPitanjaUkupno, ukupnoPitanja) {
    var ukupnoNetocnihOdgovora = ukupnoPitanja - tocnoOdgovorenihPitanjaUkupno;
    var postotakRijesenogIspita = Math.round(tocnoOdgovorenihPitanjaUkupno / ukupnoPitanja * 100);

    document.getElementById("rezultatParagraf").innerHTML = "Riješili ste "
        + tocnoOdgovorenihPitanjaUkupno + " od ukupno " +
        ukupnoPitanja + " pitanja (" + postotakRijesenogIspita + "%).";

    if (ukupnoNetocnihOdgovora === 0) {
        document.getElementById("daLiJeIspitPolozen").innerHTML = "Riješili ste sva pitanja točno! BRAVO!";
        document.getElementById("image-thumb").src = "img/champion.png";
    } else if (postotakRijesenogIspita > 64) {
        document.getElementById("daLiJeIspitPolozen").innerHTML = "Uspješno ste položili ispit! (PASS)";
        document.getElementById("image-thumb").src = "img/thumb-up.png";
    } else {
        document.getElementById("daLiJeIspitPolozen").innerHTML = "Nažalost, niste položili ispit (FAIL)";
        document.getElementById("image-thumb").src = "img/thumb-down.png";
    }
}

// ŠTOPERICA

var intervalTimera;

function stoperica() {
    var vrijemeMinute = "90";
    var vrijemeSekunde = "00";

    intervalTimera = setInterval(function () {
        var minute = parseInt(vrijemeMinute);
        var sekunde = parseInt(vrijemeSekunde);

        if (sekunde === 0) {
            if ((minute - 1).toString().length === 1) {
                vrijemeMinute = "0" + (minute - 1).toString();
            } else {
                vrijemeMinute = (minute - 1).toString();
            }

            vrijemeSekunde = "59";
        } else {
            if ((sekunde - 1).toString().length === 1) {
                vrijemeSekunde = "0" + (sekunde - 1).toString();
            } else {
                vrijemeSekunde = (sekunde - 1).toString();
            }
        }

        document.getElementById("timer").innerHTML = vrijemeMinute + ":" + vrijemeSekunde;

        if (vrijemeMinute === "00" && vrijemeSekunde === "00") {
            clearInterval(intervalTimera);

            $("#myModalIstekloVrijeme").modal({
                backdrop: 'static',
                keyboard: false
            });
        }

    }, 1000);
}


$("#btn-modal-isteklo-vrijeme").on("click", function () {
    klikProvjeraOdgovora(true);
});


















