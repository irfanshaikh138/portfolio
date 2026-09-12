# Irfan Shaikh — Senior Full Stack Engineer Portfolio

A modern, high-performance portfolio website built for **Irfan Shaikh**, Senior Full Stack & Distributed Systems Engineer based in Pune, India.

## 🚀 Live Production URLs
* 🌟 **Primary Live Domain:** **[https://irfanshaikh.surge.sh](https://irfanshaikh.surge.sh)**
* 🔗 **Alternative Domain:** **[https://irfan-shaikh-portfolio.surge.sh](https://irfan-shaikh-portfolio.surge.sh)**

---

## 📖 Guides & Documentation
* 🐙 **[GITHUB-PAGES-DEPLOYMENT-GUIDE.md](./GITHUB-PAGES-DEPLOYMENT-GUIDE.md)** — Step-by-step guide to deploy for free on GitHub Pages (`username.github.io`).
* 🌐 **[CUSTOM-DOMAIN-GUIDE.md](./CUSTOM-DOMAIN-GUIDE.md)** — How to connect your own domain (e.g. `irfanshaikh.dev` / `irfanshaikh.in`).
* 🏗️ **[PORTFOLIO-ARCHITECTURE-AND-DEPLOYMENT.md](./PORTFOLIO-ARCHITECTURE-AND-DEPLOYMENT.md)** — Complete architecture decisions, performance benchmarks, and multi-cloud deployment guide.

---

## 🛠️ Tech Stack
- **HTML5 & Modern CSS3** with CSS Variables & Glassmorphism design system
- **Vanilla JavaScript (ES6+)** for fast, zero-dependency interactivity
- **Google Fonts:** Inter & JetBrains Mono
- **CI/CD:** GitHub Actions workflow pre-configured (`.github/workflows/deploy-pages.yml`)
- **Responsive Architecture:** Fully optimized across mobile, tablet, and widescreen desktop

---

## 💻 Running Locally
You can preview the portfolio locally:

```bash
# Navigate to directory
cd /Users/irfanshaikh/Downloads/interview-prep/portfolio

# Start a local web server (Python 3)
python3 -m http.server 3000

# Open http://localhost:3000 in your browser
```

---

## 🌐 Deploying Updates

### Option 1: To Surge (Live in 3 seconds)
```bash
cd /Users/irfanshaikh/Downloads/interview-prep/portfolio
npx surge . irfanshaikh.surge.sh
```

### Option 2: To GitHub Pages
```bash
cd /Users/irfanshaikh/Downloads/interview-prep/portfolio
./deploy-github.sh
```
*(Or standard `git add . && git commit -m "update" && git push`)*