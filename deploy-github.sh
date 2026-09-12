#!/usr/bin/env bash
# ==============================================================================
# Irfan Shaikh Portfolio — 1-Click GitHub Deployment Script
# ==============================================================================

set -e

# Colors for terminal output
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${CYAN}====================================================${NC}"
echo -e "${CYAN}  🚀 Irfan Shaikh Portfolio — GitHub Deployer       ${NC}"
echo -e "${CYAN}====================================================${NC}\n"

# Ensure we are in the portfolio directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

# 1. Initialize Git if not already done
if [ ! -d ".git" ]; then
  echo -e "${YELLOW}📦 Initializing git repository...${NC}"
  git init
  git branch -M main
fi

# 2. Configure Git user if not set
git config user.name "Irfan Shaikh"
git config user.email "irfanshkh52@gmail.com"

# 3. Check for remote origin
REMOTE_URL=$(git config --get remote.origin.url || true)

if [ -z "$REMOTE_URL" ]; then
  echo -e "${YELLOW}⚠️  No GitHub remote configured yet.${NC}"
  echo -e "Please enter your GitHub Username (or full repo URL):"
  read -r INPUT_USER_OR_URL

  if [ -z "$INPUT_USER_OR_URL" ]; then
    echo -e "${RED}❌ Error: No repository or username provided. Aborting.${NC}"
    exit 1
  fi

  # If user typed just username, form the standard repo URL
  if [[ "$INPUT_USER_OR_URL" == http* ]] || [[ "$INPUT_USER_OR_URL" == git@* ]]; then
    REPO_URL="$INPUT_USER_OR_URL"
  else
    REPO_URL="https://github.com/${INPUT_USER_OR_URL}/portfolio.git"
  fi

  echo -e "${GREEN}🔗 Setting remote origin to: ${REPO_URL}${NC}"
  git remote add origin "$REPO_URL"
else
  echo -e "${GREEN}✅ Existing remote detected: ${REMOTE_URL}${NC}"
fi

# 4. Stage and commit changes
echo -e "\n${YELLOW}📦 Staging files...${NC}"
git add .

COMMIT_MSG="Portfolio update: $(date '+%Y-%m-%d %H:%M:%S')"
if git diff-index --quiet HEAD -- 2>/dev/null; then
  echo -e "${CYAN}ℹ️  No new changes to commit.${NC}"
else
  echo -e "${YELLOW}📝 Committing changes: '${COMMIT_MSG}'...${NC}"
  git commit -m "$COMMIT_MSG"
fi

# 5. Push to GitHub
echo -e "\n${CYAN}🚀 Pushing to GitHub (main branch)...${NC}"
git push -u origin main

echo -e "\n${GREEN}====================================================${NC}"
echo -e "${GREEN}  🎉 Successfully Pushed to GitHub!                 ${NC}"
echo -e "${GREEN}====================================================${NC}"
echo -e "If GitHub Actions is enabled, your site will deploy automatically."
echo -e "Visit: ${CYAN}https://github.com/$(git config --get remote.origin.url | sed -e 's/.*github.com[:\/]//' -e 's/\.git$//')/settings/pages${NC}"
echo -e "to check your GitHub Pages deployment status!\n"
