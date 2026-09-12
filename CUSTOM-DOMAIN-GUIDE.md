# 🌐 Custom Domain Guide for Irfan Shaikh's Portfolio

> **Summary:**
> 1. ✅ **Your Free Clean Domain is ALREADY LIVE:** **[https://irfanshaikh.surge.sh](https://irfanshaikh.surge.sh)**
> 2. 🚀 **Want your own `.dev` or `.in` domain?** (e.g. `irfanshaikh.dev`): Follow the step-by-step guide below to connect it in under 3 minutes.

---

## 1. 🎁 What We Already Created For You (100% Free & Active)

You do not need to buy anything to have a clean, professional personal domain. We claimed and deployed your portfolio to:

* 🌟 **Primary Clean Domain:** **`https://irfanshaikh.surge.sh`**
* 🔗 **Alternative Domain:** `https://irfan-shaikh-portfolio.surge.sh`

Both domains feature:
* **Free Managed SSL (HTTPS)**
* **Global CDN Caching** across 10 worldwide edge nodes (Bangalore, Singapore, US, Europe, Japan)
* **Zero Cost & Zero Maintenance**

---

## 2. 🏷️ Recommended Custom Domains to Buy

If you'd like a personalized top-level domain (TLD) to put on your resume, LinkedIn, and email signature, here are the top recommendations:

| Domain | Why It's Great | Estimated Price | Best For |
|---|---|---|---|
| **`irfanshaikh.dev`** ⭐ *(Top Recommendation)* | Built specifically for developers. Managed by Google Registry. Enforces HTTPS security by default. | ~₹800 – ₹1,000 / year | Silicon Valley & FAANG / L5 positioning |
| **`irfanshaikh.in`** | Highly recognized in India. Very memorable and affordable. | ~₹399 – ₹499 / year | Indian tech ecosystem & recruiters |
| **`irfanshaikh.tech`** | Clean, modern tech-focused extension. | ~₹400 – ₹700 / year | General tech branding |
| **`irfanshaikh.me`** | Great personal portfolio branding. | ~₹800 – ₹1,200 / year | Personal developer brand |

> 💡 **Where to buy safely without hidden fees:**
> 1. **Cloudflare Registrar** (cloudflare.com) — *Wholesale pricing, zero markup, free privacy protection.*
> 2. **Porkbun** (porkbun.com) — *Simple, low cost, transparent.*
> 3. **Namecheap** (namecheap.com) — *Popular, includes free WhoisGuard privacy.*

---

## 3. 🔌 How to Connect Your Purchased Domain to Surge (3-Minute Setup)

Once you buy your domain (for example, `irfanshaikh.dev` or `irfanshaikh.in`), follow either **Method A** or **Method B**:

### Method A: Point CNAME & A Records (Most Common)

Log in to where you bought the domain (e.g., Cloudflare, Namecheap, GoDaddy) and open your **DNS Management / DNS Records** settings:

#### 1. For Subdomains (e.g. `www.irfanshaikh.dev`):
Add a **CNAME** record:
* **Type:** `CNAME`
* **Name / Host:** `www`
* **Target / Value:** `geo.surge.sh` (or `na-bootstrap1.surge.sh`)
* **TTL:** Automatic or 3600

#### 2. For Apex / Root Domain (e.g. `irfanshaikh.dev`):
If your DNS provider supports **CNAME Flattening / ALIAS** (like Cloudflare):
* **Type:** `CNAME`
* **Name / Host:** `@`
* **Target / Value:** `geo.surge.sh`

If your DNS provider requires an IP address (like GoDaddy / Namecheap Basic):
* **Type:** `A`
* **Name / Host:** `@`
* **Target / Value:** `45.55.118.252` *(Surge's Anycast IP)*

---

### Method B: Delegate to Surge Nameservers (Easiest — Surge Manages DNS)

If you don't want to configure individual records, change the **Nameservers** at your registrar to Surge's nameservers:

```text
ns1.surge.world
ns2.surge.world
ns3.surge.world
ns4.surge.world
```
Surge will automatically handle geo-routing, DNS, and SSL certificates for your entire domain.

---

## 4. 🚀 Link Your New Domain in Your Project

Once your DNS is configured:

### Step 1: Update the `CNAME` file in your portfolio directory:
```bash
cd /Users/irfanshaikh/Downloads/interview-prep/portfolio
echo "irfanshaikh.dev" > CNAME
```
*(Replace `irfanshaikh.dev` with your actual domain name).*

### Step 2: Publish to Surge:
```bash
npx surge . irfanshaikh.dev
```

### Step 3: Verify SSL & DNS Status
Surge automatically provisions a free SSL certificate (HTTPS) once your DNS records propagate:
```bash
npx surge irfanshaikh.dev debug status
```

---

## 5. ❓ Frequently Asked Questions

### Q: Does Surge automatically redirect `www` to non-`www`?
**Yes!** Surge automatically detects whether a user types `www.irfanshaikh.dev` or `irfanshaikh.dev` and redirects to the canonical URL to maintain high SEO rankings.

### Q: How long does DNS propagation take?
Usually between **5 minutes to 1 hour**. Once DNS points to Surge, your site will load instantly.

### Q: Do I lose `https://irfanshaikh.surge.sh` if I add a custom domain?
No! You can keep your `.surge.sh` address as a staging/preview domain, or deploy to both.

