ForEach-Object ($ln in (Get-Content .\extensions)){
  Write-Output ">> Install: $ln"
  codium --install-extension "$ln"
}

Write-Output ">> Copy: settings.json"

Copy-Item .\settings.json "$env:APPDATA\VSCodium\User\settings.json"

Write-Output ">> Done."
