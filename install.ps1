function Invoke-SetupVim {
    # Install vimrc to init.vim
    $vimrc = Join-Path -Path $cwd -ChildPath "vim/vimrc"
    $nvimDir = Join-Path -Path $env:LocalAppData -ChildPath "nvim"
    $target = Join-Path -Path $nvimDir -ChildPath "init.vim"

    New-Item -ItemType Directory -Path $nvimDir -ea 0
    Copy-Item $vimrc -Destination $target

    # Install vim-plug
    $autoloadDir = Join-Path -Path $env:LocalAppData -ChildPath "nvim-data/site/autoload"
    $plugFile = Join-Path -Path $autoloadDir -ChildPath "plug.vim"
    New-Item -ItemType Directory -Path $autoloadDir -ea 0
    $uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    (New-Object Net.WebClient).DownloadFile($uri, $plugFile)
}

function Invoke-SetupPowershell {
    $profile = Join-Path -Path $cwd -ChildPath "powershell/profile.ps1"
    $targetDir = Join-Path -Path $env:UserProfile -ChildPath "Documents\WindowsPowershell"
    $targetFile = Join-Path -Path $targetDir -ChildPath "profile.ps1"
    New-Item -ItemType Directory -Path $targetDir -ea 0
    Copy-Item $profile -Destination $targetFile
}

$cwd = Get-Location
Invoke-SetupVim
Invoke-SetupPowershell
