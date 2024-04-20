# My Windows 10 dual monitor dotfiles

![Preview](preview.webp)

## Installation

Install [scoop](https://scoop.sh/) first if you haven't

```pwsh
scoop bucket add extras
scoop install extras/glazewm
scoop install extras/taskbarx
scoop install main/winfetch
scoop install main/ntop
```

- Open `TaskbarX Configurator` then under `Style`, select `Transparent` and under `Startup > Taskschedule`, click `Create` then hit `Apply`.
- Open `Taskbar settings`, then turn on `Use small taskbar buttons` and set `Taskbar location on screen` to `Top`.
- Extract `cava.zip` and move it somewhere then add it path to `Environment Variables Path`.
- Add `Set-Alias neofetch winfetch` to `$PROFILE`
