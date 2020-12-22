$extensions = 
    "formulahendry.auto-rename-tag",
    "coenraads.bracket-pair-colorizer",
    "dsznajder.es7-react-js-snippets",
    "github.github-vscode-theme",
    "abusaidm.html-snippets",
    "xabikos.javascriptsnippets",
    "nur.just-black",
    "azemoh.one-monokai",
    "equimper.react-native-react-redux",
    "ms-vscode-remote.remote-wsl",
    "hookyqr.beautify",
    "ms-vscode.cpptools",
    "formulahendry.code-runner",
    "vscjava.vscode-java-debug",
    "editorconfig.editorconfig",
    "dbaeumer.vscode-eslint",
    "ms-python.gather",
    "ecmel.vscode-html-css",
    "zignd.html-css-class-completion",
    "vscjava.vscode-java-pack",
    "vscjava.vscode-java-test",
    "ms-vscode.vscode-typescript-next",
    "ms-toolsai.jupyter",
    "kiteco.kite",
    "redhat.java",
    "ritwickdey.liveserver",
    "ms-vsliveshare.vsliveshare",
    "ms-vsliveshare.vsliveshare-audio",
    "ms-vsliveshare.vsliveshare-pack",
    "vscjava.vscode-maven",
    "esbenp.prettier-vscode",
    "vscjava.vscode-java-dependency",
    "ms-python.vscode-pylance",
    "ms-python.python",
    "wallabyjs.quokka-vscode",
    "msjsdiag.vscode-react-native",
    "gruntfuggly.todo-tree",
    "visualstudioexptteam.vscodeintellicode"

$cmd = "code --list-extensions"
Invoke-Expression $cmd -OutVariable output | Out-Null
$installed = $output -split "\s"
    
foreach ($ext in $extensions) {
    if ($installed.Contains($ext)) {
        Write-Host $ext "already installed." -ForegroundColor Gray
    } else {
        Write-Host "Installing" $ext "..." -ForegroundColor White
        code --install-extension $ext
    }
}