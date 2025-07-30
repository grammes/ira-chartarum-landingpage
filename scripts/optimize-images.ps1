# Image Optimization Script for GitHub Pages
# This will convert JPG images to WebP format for better performance

param(
    [string]$SourceDir = "assets\images",
    [int]$Quality = 85
)

Write-Host "Image optimization script for Ira Chartarum landing page" -ForegroundColor Green
Write-Host "Converting images to WebP format for better performance..." -ForegroundColor Yellow

# Check if source directory exists
if (-not (Test-Path $SourceDir)) {
    Write-Host "Source directory '$SourceDir' not found!" -ForegroundColor Red
    exit 1
}

# Get all JPG files
$jpgFiles = Get-ChildItem -Path $SourceDir -Filter "*.jpg" -Recurse

if ($jpgFiles.Count -eq 0) {
    Write-Host "No JPG files found in '$SourceDir'" -ForegroundColor Yellow
    exit 0
}

Write-Host "Found $($jpgFiles.Count) JPG files to convert" -ForegroundColor Cyan

foreach ($file in $jpgFiles) {
    $webpPath = $file.FullName -replace '\.jpg$', '.webp'
    
    Write-Host "Converting: $($file.Name) -> $([System.IO.Path]::GetFileName($webpPath))" -ForegroundColor White
    
    # Note: This requires ImageMagick or similar tool to be installed
    # For GitHub Pages deployment, the original JPG files will be used as fallback
    # WebP conversion can be done during build process or manually
    
    # Placeholder for actual conversion command
    # magick "$($file.FullName)" -quality $Quality "$webpPath"
}

Write-Host "`nImage optimization completed!" -ForegroundColor Green
Write-Host "Note: Install ImageMagick or similar tool for actual WebP conversion" -ForegroundColor Yellow
Write-Host "For now, JPG files will be used as fallback in the HTML picture elements" -ForegroundColor Yellow
