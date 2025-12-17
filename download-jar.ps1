$ErrorActionPreference = "Stop"
Write-Host "Downloading correct gradle-wrapper.jar..."

# Используем WebClient для надежного скачивания
$webClient = New-Object System.Net.WebClient
$url = "https://repo.maven.apache.org/maven2/gradle/wrapper/gradle/8.5/gradle-8.5-wrapper.jar"
$output = "gradle\wrapper\gradle-wrapper.jar"

# Убедимся что папка существует
if (-not (Test-Path "gradle\wrapper")) {
    New-Item -ItemType Directory -Path "gradle\wrapper" -Force
}

Write-Host "Downloading from: $url"
$webClient.DownloadFile($url, $output)

# Проверяем
$fileInfo = Get-Item $output
Write-Host "Downloaded: $($fileInfo.Length) bytes"
Write-Host "File saved to: $output"

if ($fileInfo.Length -lt 50000) {
    Write-Host "WARNING: File might be too small!" -ForegroundColor Red
} else {
    Write-Host "SUCCESS: File looks correct" -ForegroundColor Green
}
