$ErrorActionPreference = "Stop"

Push-Location $PSScriptRoot
try {
    $buildDir = Join-Path $PSScriptRoot "build"
    New-Item -ItemType Directory -Force -Path $buildDir | Out-Null

    & xelatex -interaction=nonstopmode -halt-on-error "-output-directory=$buildDir" main.tex
    & xelatex -interaction=nonstopmode -halt-on-error "-output-directory=$buildDir" main.tex
}
finally {
    Pop-Location
}
