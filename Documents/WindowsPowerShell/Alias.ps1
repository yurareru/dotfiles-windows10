# uutils-coreutils
Remove-Item alias:cat
Remove-Item alias:cd
Remove-Item alias:cp
Remove-Item alias:echo
Remove-Item alias:ls
Remove-Item alias:mv
Remove-Item alias:pwd
Remove-Item alias:rm
Remove-Item alias:rmdir

Set-Alias mkdir mkdir.exe
Set-Alias more more.exe
Set-Alias neofetch fastfetch
Set-Alias ls eza
Set-Alias sudo gsudo

function ll {
  eza -lah
}

# z
function cd {
  if ($args.Count -ne 0) {
    z "$args" 
  }
  else {
    z ~
  }
  # after running z as cd, it reverts the alias
  Remove-Item alias:cd -ErrorAction Ignore
}

# archwsl > neo-matrix
function neo {
  arch.exe run neo-matrix -D -c cyan $args
}

# junction behaves like ln
function junction {
  $target = Split-Path $args[1]
  mv.exe $args[0] $target
  junction.exe $args[0] $args[1]
}

function codealias {
  code $env:USERPROFILE\Documents\WindowsPowerShell\Alias.ps1
}

function codeglaze {
  code $env:USERPROFILE\.glaze-wm\config.yaml
}

function ngrokstatic {
  ngrok http --domain=trusty-redbird-better.ngrok-free.app $args
}

function art {
  php artisan $args
}

function br {
  bun run $args
}

function bx {
  bunx $args
}
