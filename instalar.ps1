# Instalador CleanCo: Claude Code + marketplace + plugin
# Uso: irm https://raw.githubusercontent.com/SEU-USUARIO/SEU-REPO/main/instalar.ps1 | iex
$ErrorActionPreference = "Stop"

# >>> EDITE AQUI <<<
$Repo        = "SEU-USUARIO/SEU-REPO"     # repo no GitHub que contem .claude-plugin/marketplace.json
$Marketplace = "cleanco-marketplace"      # "name" dentro do marketplace.json
$Plugins     = @("cleanco")               # plugins a instalar

function Step($msg) { Write-Host ""; Write-Host "==> $msg" -ForegroundColor Cyan }

# 1. Claude Code
$bin = Join-Path $env:USERPROFILE ".local\bin"
$claudeExe = Join-Path $bin "claude.exe"

if (Get-Command claude -ErrorAction SilentlyContinue) {
  Step "Claude Code ja instalado: $((claude --version) 2>$null)"
} else {
  Step "Instalando Claude Code..."
  irm https://claude.ai/install.ps1 | iex
}

# 2. PATH (sessao atual + permanente para o usuario)
if (Test-Path $bin) {
  if ($env:Path -notlike "*$bin*") { $env:Path = "$bin;$env:Path" }
  $userPath = [Environment]::GetEnvironmentVariable("Path", "User")
  if ($userPath -notlike "*$bin*") {
    [Environment]::SetEnvironmentVariable("Path", "$bin;$userPath", "User")
    Step "Adicionado ao PATH do usuario: $bin"
  }
}

if (-not (Get-Command claude -ErrorAction SilentlyContinue)) {
  Write-Host "Nao encontrei o comando 'claude' apos a instalacao. Reinicie o terminal e rode este instalador de novo." -ForegroundColor Red
  exit 1
}

# 3. Marketplace + plugins
Step "Adicionando marketplace $Repo..."
try { claude plugin marketplace add $Repo } catch { Write-Host "Marketplace ja existia ou falhou ao adicionar: $_" -ForegroundColor Yellow }

foreach ($p in $Plugins) {
  Step "Instalando plugin $p@$Marketplace..."
  claude plugin install "$p@$Marketplace" --scope user
}

Step "Concluido."
Write-Host "Abra um terminal novo e rode:  claude" -ForegroundColor Green
Write-Host "Na primeira vez ele vai pedir login no navegador." -ForegroundColor Green
Write-Host "Depois, dentro do Claude Code, digite /agents para ver os agentes do CleanCo." -ForegroundColor Green
