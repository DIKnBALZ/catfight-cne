// woah

introLength = 0;
function onCountdown(e) e.cancel();

function postCreate()
    camGame.fade(0xFF000000, 0.001, false);

function beatHit() {
    switch (curBeat) {
        case 3:
            camGame.fade(0xFF000000, Conductor.crochet / 1000, true);
        case 292:
            if (difficulty == "silly") {
                // doTweenAngle('v', 'lyricsTxt', 56, 2, 'sineInOut')
                // doTweenX('v2', 'lyricsTxt', -400, 2, 'sineInOut')
                // doTweenY('v3', 'lyricsTxt', -200, 3, 'sineInOut')
            }
    }
}