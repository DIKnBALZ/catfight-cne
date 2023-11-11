// boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies boobies

import flixel.math.FlxMatrix;
import flixel.graphics.FlxGraphic;

function postCreate() {
    stage.getSprite('clockMin').origin.y = stage.getSprite('clockSec').origin.y = 133.5;
}

// var curFrame:Float = 0;
function postUpdate(elapsed:Float) {
    // curFrame += elapsed * 1000;
    clockMin.angle = (Conductor.songPosition / FlxG.sound.music.length) * 360;
    clockSec.angle = clockMin.angle * 60;

    // if (curFrame % 40 <= 20) {
    //     var transformMatrix = new FlxMatrix();
    //     transformMatrix.translate(-(0.5 * camGame.width * (camGame.scaleX - 0.7) / camGame.scaleX), -(0.5 * camGame.height * (camGame.scaleY - 0.7) / camGame.scaleY));
    //     transformMatrix.scale(camGame.scaleX/4, camGame.scaleY/4);
    //     camCopy.pixels.draw(camGame.canvas, transformMatrix);
    // }
}

// function onCreate() {
//     var colorShader = new ColorSwap();
//     camCopy.shader = colorShader.shader;
//     colorShader.hue = 0.1;
//     colorShader.saturation = -0.35;
// }

// var curFrame:Float = 0;
// function onUpdatePost(e) {
//     curFrame += e*1000;
//     clockminute.angle = (Conductor.songPosition / game.songLength) * 360;
//     clocksecond.angle = clockminute.angle * 60;
//     if (curFrame % 40 <= 20) {
//         var camGame = game.camGame;
//         var transformMatrix = new FlxMatrix();
//         transformMatrix.translate(-(0.5 * camGame.width * (camGame.scaleX - camGame.initialZoom) / camGame.scaleX), -(0.5 * camGame.height * (camGame.scaleY - camGame.initialZoom) / camGame.scaleY));
//         transformMatrix.scale(camGame.scaleX/4, camGame.scaleY/4);
//         camCopy.pixels.draw(camGame.canvas, transformMatrix);
//     }
// }