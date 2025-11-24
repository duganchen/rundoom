# RUNDOOM

A Classic-DOOM launcher for the FISH shell.

## Usage

I'm going to get myself set up to play the following:

Heretic with:
* [International Heretic](https://jnechaevsky.github.io/inter-doom/)
* [Heretic Minor Sprite Fixing and Widescreen-Friendly Project](https://www.doomworld.com/forum/topic/64778-heretic-minor-sprite-fixing-and-widescreen-friendly-project-v10-release/)

DOOM2 with 
* [Woof](https://fabiangreffrath.github.io/woof/)
* [Going Down Turbo](https://doomwiki.org/wiki/Going_Down:_Turbo)
* [The high resolution Doom sound effects pack](https://www.perkristian.net/game_doom-sfx.shtml)

Using a powerful text editor that auto-completes file paths and supports json schemas (and using the
provided rundoompresets_schema.json), I translate that to the following json configuration file:

    {
        "heretic": {
            "engine": "~/Applications/inter-heretic-8.3-linux.appimage",
            "file": [
                "~/pwads/HRSPFX10/HRSPFX10.WAD",
                "~/pwads/HRSPFX10/HRWIDE10.WAD"
            ]
        },
        "gdturbo": {
            "engine": "~/Applications/Woof-15.3.0-Linux.appimage",
            "iwad": "DOOM2",
            "file": [
                "~/pwads/pk_doom_sfx/pk_doom_sfx_20120224.wad",
                "~/pwads/gdturbo/gdturbo.wad"
            ],
            "deh": [
                "~/pwads/sprfix20/D2SPFX20.WAD"
            ]
        }
    }

I then use I use FISH's completion system (which respects MRU) to choose and launch a preset for the *rundoom* command:

![FISH completion](screenshots/rundoom_completion.png)

Running *rundoom* without arguments gives you a picker. Looks cool, but really an experiment that I threw in. The intended usage is to take advantage of FISH's completion system:

![Picker](screenshots/rundoom_picker.png)

## Setup

Copy completions/rundoom.fish to ~/.config/fish/completions.

Copy bin/rundoom to a directory to ~/.local/bin, which you should have in your PATH.

Set the RUNDOOMPRESETS to be the path to the json file you're using for the presets. If the file is
~/Documents/rundoom/rundoompresets.json, then you do:

    set -x RUNDOOMPRESETS ~/Documents/rundoom/rundoompresets.json,

## Requirements

* [jq](https://jqlang.org/)
* [fzf](https://junegunn.github.io/fzf/)
