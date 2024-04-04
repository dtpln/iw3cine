<img src="AWAITING HEADER IMAGE...">

# *IW3cine*

### 🎥 A features-rich cinematic mod for Call of Duty 4: Modern Warfare

<img src="https://img.shields.io/badge/REWRITE%20IN%20PROGRESS-eecb00?style=flat-square">　<a href="https://github.com/dtpln/iw3cine/releases"><img src="https://img.shields.io/github/v/release/dtpln/iw3cine?label=Latest%20release&style=flat-square&color=eecb00"></a>　<a href="https://discord.gg/wgRJDJJ"><img src="https://img.shields.io/discord/617736623412740146?label=Join%20the%20IW4Cine%20Discord!&style=flat-square&color=eecb00"></a>  
<br/><br/>

**PLEASE NOTE**: As the original mod is in a WIP phase, so will this port be..

This is a port of [Sass' Cinematic Mod](https://github.com/sortileges/iw4cine) for Call of Duty 4: Modern Warfare, designed for video editors to create cinematics shots in-game.

This mod creates new dvars combined as player commands. They are all associated to script functions that are triggered when the dvar doesn't equal it's default value, meaning these functions will all independently stay idle until they get notified to go ahead.

This mod was also designed as a Multiplayer mod only. It will not work in Singleplayer or Zombies.


<br/><br/>
## Requirements

In order to use the latest version of this mod directly from the repo, you'll need a copy of **Call of Duty 4: Modern Warfare®** with or without the **[IW3XO](https://xoxor4d.github.io/projects/iw3xo)** client or [COD4x](https://cod4x.ovh/t/releases/24) installed.

<br/><br/>
## Installation

Simply download the mod through [this link](https://github.com/dtpln/iw3cine/releases/latest). Scroll down and click on "Source code (zip)" to download the archive.

Once the mod is downloaded, open the ZIP file and drag the "iw3cine" folder into your `COD4/mods` folder. If the `mods` folder doesn't exist, create it. (*You can also rename the mod if you'd like.*)

<br/>

```
X:/
└── .../
    └── Call of Duty 4/
        └── mods/
            └── iw3cine/
```

<br/><br/>
## How to use

The link below contains a HTML file that explains every command from the [latest release](https://github.com/sortileges/iw4cine/releases/latest) in details. The HTML file will open a new browser tab when you click on it. 
- **[sortileges.github.io/iw4cine/help](https://sortileges.github.io/iw4cine/help)**.

**It is not up-to-date with what's in the master branch,** although everything should still work as intended. Just don't be surprised if something is missing or not working as expected!

Once [Sass](https://github.com/sortileges) finishes the mod's rewrite, the HTML file will be updated accordingly.


<br/><br/>
## Features
**MISC FUNCTIONS**

    - [x]   clone             -- <set to 1>
    - [x]   drop              -- <set to 1>
    - [x]   about             -- <set to 1>
    - [x]   clearbodies       -- <set to 1>
    - [x]   viewhands         -- <model_name>
    - [x]   eb_explosive      -- <radius>
    - [x]   eb_magic          -- <degrees>
    - [x]   spawn_model       -- <model_name>
    - [x]   spawn_fx          -- <fx_name>
    - [x]   vision            -- <vision>
    - [x]   fog               -- <start> <half> <red> <green> <blue> <time>

**BOT FUNCTIONS**

    - [x]   spawn             -- <weapon_mp> <allies/axis> <model>
    - [x]   weapon            -- <bot_name> <weapon_name> <camo_name>
    - [x]   move              -- <bot_name>
    - [x]   aim               -- <bot_name>
    - [x]   stare             -- <bot_name>
    - [x]   model
    - [x]   kill              -- <bot_name> <body/head>
    - [x]   holdgun
    - [ ]   freeze            -- <set to 1> // Leaving out for now since bots have 0 AI.
   
</br><br/>
**PLANNED FEATURES**
    
    - [ ]    Implementation of Bot Warfare mod.

<br/><br/>
## Credits
- **Sass** - Created the original IW4Cine mod. All the code was written by him, I just edited it to work on this game.
- **Antiga** - Helped rewrite the mod and fix things that I couldn't.
