# Скрипт для удаления переменной окружения из Vercel через CLI
# Использование: .\scripts\remove-env-var.ps1 -VarName "WEBHOOK_URL" -Environment "production"

param(
    [Parameter(Mandatory=$true)]
    [string]$VarName,
    
    [Parameter(Mandatory=$false)]
    [ValidateSet("production", "preview", "development")]
    [string]$Environment = "production"
)

Write-Host "Удаление переменной $VarName из окружения $Environment..." -ForegroundColor Yellow

# Удаление переменной через Vercel CLI
vercel env rm $VarName $Environment --yes

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Переменная $VarName успешно удалена из $Environment" -ForegroundColor Green
} else {
    Write-Host "❌ Ошибка при удалении переменной" -ForegroundColor Red
}
