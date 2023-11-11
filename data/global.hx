import funkin.backend.utils.NativeAPI;

function update(elapsed:Float)
    if (FlxG.keys.justPressed.F8)
        NativeAPI.allocConsole();