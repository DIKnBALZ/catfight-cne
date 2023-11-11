// hud

import flixel.text.FlxText;
import flixel.addons.transition.FlxTransitionableState;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;

function onNoteCreation(event)
	event.noteSprite = 'silly';

function onStrumCreation(event) {
	event.sprite = 'silly';
    event.cancelAnimation();
}

function onPlayerHit(event)
    event.showSplash = false;

var lyricsTxt:FlxText;
function postCreate() {
    lyricsTxt = new FlxText(400, 480, FlxG.width - 800, "", 32);
    lyricsTxt.setFormat(Paths.font("lyricfont.ttf"), 16, FlxColor.WHITE, 'center', scoreTxt.borderStyle, FlxColor.BLACK);
    lyricsTxt.borderSize = 0.2;
    lyricsTxt.scrollFactor.set();
    lyricsTxt.scale.set(1.3, 1);
    lyricsTxt.updateHitbox();
    lyricsTxt.cameras = [camHUD];
    add(lyricsTxt);

    scoreTxt.setFormat(Paths.font("lyricfont.ttf"), 16, FlxColor.WHITE, 'center', lyricsTxt.borderStyle, FlxColor.BLACK);
    scoreTxt.scale.set(1, 1.3);
    scoreTxt.borderSize = 0.2;
}

function onEvent(e) {
    if (e.event.name == "Lyrics")
        lyricsTxt.text = e.event.params[0];
}

// function onGameOver() {
//     boyfriend.stunned = true;
//     deathCounter++;

//     paused = true;

//     FlxTween.tween(game, {playbackRate: 0.0001}, 0.2, {ease: FlxEase.sineIn, onComplete: function(twn) {
//         game.vocals.stop();
//         FlxG.sound.music.stop();
//         new FlxTimer().start(0.3, function(tmr) {
//             game.playbackRate = 1;
//             FlxTransitionableState.skipNextTransOut = true;
//             FlxG.resetState();
//         });
//     }});
//     return Function_Stop;
// }