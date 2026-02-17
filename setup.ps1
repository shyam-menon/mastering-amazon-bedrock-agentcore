# Setup script for mastering-amazon-bedrock-agentcore project
Write-Host "Setting up project environment..." -ForegroundColor Green

# Navigate to project root (already in correct directory)
Write-Host "Working directory: $(Get-Location)" -ForegroundColor Cyan

# Initialize uv project at root level (shared across all files)
Write-Host "Initializing uv project..." -ForegroundColor Yellow
uv init --python 3.10
uv venv

# Install required packages in shared environment
Write-Host "Installing packages..." -ForegroundColor Yellow
uv add boto3 python-dotenv jupyter ipykernel requests

# Try to install bedrock packages (may not be publicly available)
Write-Host "Installing AgentCore packages..." -ForegroundColor Yellow
try {
    uv add bedrock-agentcore bedrock-agentcore-starter-toolkit strands-agents-tools
} catch {
    Write-Host "WARNING: AgentCore packages not available" -ForegroundColor DarkYellow
}

# Install additional packages for notebooks
Write-Host "Installing additional packages..." -ForegroundColor Yellow
uv add strands-agents pandas numpy matplotlib seaborn beautifulsoup4 selenium fastapi
uv add google-api-python-client google-auth-httplib2 google-auth-oauthlib
uv add watchtower structlog

Write-Host "Setup complete! You can now run the notebooks." -ForegroundColor Green
Write-Host "To activate the environment: .venv\Scripts\activate" -ForegroundColor Cyan