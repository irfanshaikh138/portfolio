# 🐙 Complete GitHub Pages Deployment Guide

> **Goal:** Deploy Irfan Shaikh's Portfolio to **GitHub Pages (100% Free Forever)**.  
> **Target URL:** `https://<YOUR_GITHUB_USERNAME>.github.io/portfolio/` (or `https://<YOUR_GITHUB_USERNAME>.github.io`)  
> **Local Project Path:** `/Users/irfanshaikh/Downloads/interview-prep/portfolio/`  

---

## 📌 Why GitHub Pages?

* **100% Free Hosting & SSL:** Hosted on GitHub's fast global CDN with automated HTTPS.
* **Instant Developer Credibility:** Recruiters and hiring managers at Google, Amazon, and Microsoft look at your GitHub profile first. A `.github.io` portfolio proves you know Git, version control, and CI/CD pipelines.
* **Automated CI/CD:** We have already configured a **GitHub Actions workflow** (`.github/workflows/deploy-pages.yml`). Every time you push code to `main`, GitHub automatically deploys the site in under 30 seconds!

---

## 🚀 Step-by-Step Deployment (Takes 2 Minutes)

```
┌─────────────────────────────────────────────────────────────┐
│                    THE 3-STEP PIPELINE                      │
├──────────────────────────┬──────────────────────────────────┤
│ Step 1: Create Repo      │ Go to github.com/new             │
│ Step 2: Push Code        │ Run ./deploy-github.sh (or push) │
│ Step 3: Enable Pages     │ Settings → Pages → GitHub Actions│
└──────────────────────────┴──────────────────────────────────┘
```

---

### Step 1: Create a Free Repository on GitHub

1. Open your browser and go to: **[https://github.com/new](https://github.com/new)** (log in to your GitHub account).
2. Fill in the repository details:
   * **Repository name:** `portfolio`  
     *(Tip: If you name it `YOUR_USERNAME.github.io`, your site will live directly at `https://YOUR_USERNAME.github.io` without `/portfolio/`!)*
   * **Visibility:** Select **Public** *(Free GitHub Pages requires public repositories)*.
   * **Initialize this repository with:** **UNCHECK** all boxes (do **NOT** add README, .gitignore, or license — we have already created them locally).
3. Click the green **Create repository** button.

---

### Step 2: Push Your Local Code to GitHub

Open your Mac terminal and run these commands:

```bash
# 1. Navigate to your portfolio directory
cd /Users/irfanshaikh/Downloads/interview-prep/portfolio

# 2. Add your GitHub repository as the remote origin
# (Replace YOUR_USERNAME with your real GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/portfolio.git

# 3. Push the main branch to GitHub
git push -u origin main
```

> 💡 **Even Easier — Use the 1-Click Script:**  
> We created an automated script for you! Just run:  
> ```bash
> cd /Users/irfanshaikh/Downloads/interview-prep/portfolio
> ./deploy-github.sh
> ```  
> Type in your GitHub username when prompted, and it will handle the rest!

---

### Step 3: Activate GitHub Pages in Your Repository

1. Open your repository on GitHub: `https://github.com/YOUR_USERNAME/portfolio`
2. Click on **Settings** (tab at the top right).
3. In the left sidebar, click on **Pages** (under the "Code and automation" section).
4. Under **Build and deployment** $\rightarrow$ **Source**:
   * **Recommended (Automated):** Select **GitHub Actions**.  
     *(Our pre-configured `.github/workflows/deploy-pages.yml` file will automatically run and publish your site!)*
   * **Alternative (Classic):** Select **Deploy from a branch** $\rightarrow$ Branch: `main` $\rightarrow$ Folder: `/ (root)` $\rightarrow$ Click **Save**.

---

### Step 4: Your Site is LIVE! 🎉

Within 30–60 seconds, GitHub will finish deploying. Your live URL will be:

👉 **`https://YOUR_USERNAME.github.io/portfolio/`**  
*(or `https://YOUR_USERNAME.github.io` if your repo was named `YOUR_USERNAME.github.io`)*

You will see a green checkmark and your live URL prominently displayed on the **Settings $\rightarrow$ Pages** screen!

---

## 🔄 How to Make Updates in the Future (Your Ongoing Workflow)

Whenever you update your resume, add a new project, or change styles, simply update and push:

```bash
# 1. Go to your portfolio folder
cd /Users/irfanshaikh/Downloads/interview-prep/portfolio

# 2. Test locally first (optional)
python3 -m http.server 3000

# 3. Stage and commit your edits
git add .
git commit -m "feat: added new project / updated experience"

# 4. Push to GitHub
git push
```

**That's it!** GitHub Actions automatically triggers in the background and deploys your changes to the live URL within seconds.

---

## ⚠️ Important Tip Regarding the `CNAME` File

In your folder, there is a `CNAME` file used by Surge (`irfanshaikh.surge.sh`).

* **If deploying to GitHub Pages (`.github.io`):**
  * If you want to use the default `https://YOUR_USERNAME.github.io/portfolio/`, GitHub Pages might look at the `CNAME` file and try to bind it to `irfanshaikh.surge.sh`.
  * If you notice a domain redirect message in GitHub Pages settings, simply remove the CNAME file for GitHub:
    ```bash
    rm CNAME
    git add .
    git commit -m "remove CNAME for github pages"
    git push
    ```
  * *(Surge can always be deployed anytime using `npx surge . irfanshaikh.surge.sh` even without a CNAME file!)*

---

## 🛠️ Quick Troubleshooting

| Issue | Solution |
|---|---|
| **Git asks for Username / Password on push** | GitHub no longer accepts account passwords for `git push`. Use a **Personal Access Token (PAT)** or authenticate using GitHub CLI (`gh auth login`). |
| **How to create a Personal Access Token?** | Go to GitHub $\rightarrow$ **Settings** $\rightarrow$ **Developer Settings** $\rightarrow$ **Personal access tokens (classic)** $\rightarrow$ **Generate new token** $\rightarrow$ check `repo` scope $\rightarrow$ Copy token and use as password! |
| **Page shows 404 on GitHub Pages** | Wait 60 seconds for GitHub Actions to complete. Check the **Actions** tab in your repository to see build progress. |
| **CSS or images not loading** | If hosting at `username.github.io/portfolio/`, ensure asset links are relative (`styles.css` instead of `/styles.css`). Our code already uses clean relative links! |

---

## 📋 Checklist for Irfan

- [ ] Create repo on [github.com/new](https://github.com/new) named `portfolio`
- [ ] Run `git remote add origin https://github.com/YOUR_USERNAME/portfolio.git`
- [ ] Run `git push -u origin main` (or run `./deploy-github.sh`)
- [ ] In GitHub Settings $\rightarrow$ Pages, select **GitHub Actions**
- [ ] Check your live link: `https://YOUR_USERNAME.github.io/portfolio/`
