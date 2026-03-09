# 🚀 Sang Monitor - Complete Vercel Deployment Guide

This guide covers deploying all 5 Sang Monitor variants to Vercel.

---

## 📋 Prerequisites

- Vercel CLI installed: `npm i -g vercel`
- Vercel account logged in: `vercel login`
- GitHub repository connected to Vercel

---

## 🎯 Deployment Strategy

### Option A: Single Project (Recommended ✅)

**One Vercel project serves ALL variants via hostname detection.**

**Benefits:**
- Single deployment pipeline
- Automatic variant switching via middleware
- Easier maintenance
- Shared caching and edge functions

**Setup:**
1. Deploy main project: `vercel --prod`
2. Add all 5 domains in Vercel Dashboard → Settings → Domains:
   - `sang-monitor.vercel.app`
   - `sang-tech.vercel.app`
   - `sang-finance.vercel.app`
   - `sang-happy.vercel.app`
   - `sang-commodity.vercel.app`

The middleware automatically detects the hostname and serves the correct variant.

---

### Option B: Separate Projects

**Each variant is a separate Vercel project.**

**Benefits:**
- Independent deployment pipelines
- Separate analytics per variant
- Custom build configurations

---

## 🔧 Deploy Each Variant Separately

### 1. Sang Tech Monitor

```bash
cd "E:\MOnitor\Monitors (Sang)"

# Deploy to production
vercel --project-name sang-monitor-tech --prod

# When prompted:
# - Build Command: npm run build:tech
# - Output Directory: dist
# - Environment Variables: VITE_VARIANT=tech
```

**Add Custom Domain:**
```bash
vercel domains add sang-tech.vercel.app
```

**Connect GitHub:**
1. Go to Vercel Dashboard
2. Select `sang-monitor-tech` project
3. Settings → Git → Connect Repository
4. Select: `imsanghaar/sangmonitor`
5. Configure:
   - **Production Branch:** `main`
   - **Root Directory:** `./`
   - **Build Command:** `npm run build:tech`
   - **Output Directory:** `dist`
   - **Install Command:** `npm install`
6. Add Environment Variable:
   - Key: `VITE_VARIANT`
   - Value: `tech`

---

### 2. Sang Finance Monitor

```bash
vercel --project-name sang-monitor-finance --prod
```

**Build Command:** `npm run build:finance`  
**Environment:** `VITE_VARIANT=finance`  
**Domain:** `sang-finance.vercel.app`

**Connect GitHub:**
- Same steps as Tech Monitor
- Build Command: `npm run build:finance`
- Environment: `VITE_VARIANT=finance`

---

### 3. Sang Happy Monitor

```bash
vercel --project-name sang-monitor-happy --prod
```

**Build Command:** `npm run build:happy`  
**Environment:** `VITE_VARIANT=happy`  
**Domain:** `sang-happy.vercel.app`

**Connect GitHub:**
- Same steps as above
- Build Command: `npm run build:happy`
- Environment: `VITE_VARIANT=happy`

---

### 4. Sang Commodity Monitor (NEW!)

```bash
vercel --project-name sang-monitor-commodity --prod
```

**Build Command:** `npm run build:commodity`  
**Environment:** `VITE_VARIANT=commodity`  
**Domain:** `sang-commodity.vercel.app`

**Connect GitHub:**
- Same steps as above
- Build Command: `npm run build:commodity`
- Environment: `VITE_VARIANT=commodity`

---

## ⚡ Quick Deploy Commands

Run all deployments in sequence:

```bash
# Tech
vercel --project-name sang-monitor-tech --prod --env VITE_VARIANT=tech

# Finance
vercel --project-name sang-monitor-finance --prod --env VITE_VARIANT=finance

# Happy
vercel --project-name sang-monitor-happy --prod --env VITE_VARIANT=happy

# Commodity
vercel --project-name sang-monitor-commodity --prod --env VITE_VARIANT=commodity
```

---

## 🔗 Connect GitHub After Deployment

For each deployed project:

1. **Go to Vercel Dashboard**: https://vercel.com/dashboard
2. **Select the project** (e.g., `sang-monitor-tech`)
3. **Click "Connect Git Repository"**
4. **Select:** `imsanghaar/sangmonitor`
5. **Configure Git Settings:**

| Setting | Value |
|---------|-------|
| **Production Branch** | `main` |
| **Root Directory** | `./` |
| **Build Command** | `npm run build:{variant}` |
| **Output Directory** | `dist` |
| **Install Command** | `npm install` |

6. **Add Environment Variable:**
   - Click "Environment Variables"
   - Add: `VITE_VARIANT` = `{variant}` (tech, finance, happy, or commodity)

7. **Click "Save"**

---

## 🌐 Add Custom Domains

For each project, add the custom domain:

### Via Vercel Dashboard:
1. Project Settings → Domains
2. Add domain: `sang-{variant}.vercel.app`
3. Verify DNS configuration

### Via Vercel CLI:
```bash
# Tech
vercel domains add sang-tech.vercel.app

# Finance
vercel domains add sang-finance.vercel.app

# Happy
vercel domains add sang-happy.vercel.app

# Commodity
vercel domains add sang-commodity.vercel.app
```

---

## ✅ Verify Deployments

After deployment, verify each monitor:

| Monitor | URL | Status |
|---------|-----|--------|
| **Sang Monitor** | https://sang-monitor.vercel.app | ✅ Deployed |
| **Sang Tech Monitor** | https://sang-tech.vercel.app | ⏳ Pending |
| **Sang Finance Monitor** | https://sang-finance.vercel.app | ⏳ Pending |
| **Sang Happy Monitor** | https://sang-happy.vercel.app | ⏳ Pending |
| **Sang Commodity Monitor** | https://sang-commodity.vercel.app | ⏳ Pending |

---

## 🔧 Environment Variables

For each variant project, set these environment variables:

### Common Variables (All Variants):
```
VITE_VARIANT={tech|finance|happy|commodity}
NODE_ENV=production
```

### Optional API Keys (if needed):
```
FRED_API_KEY=your_key
FINNHUB_API_KEY=your_key
ACLED_API_KEY=your_key
GROQ_API_KEY=your_key
OPENROUTER_API_KEY=your_key
```

---

## 🚨 Troubleshooting

### Build Fails
```bash
# Check build logs
vercel logs {deployment-url}

# Re-deploy with debug
vercel --debug
```

### Domain Not Working
```bash
# Verify domain is added
vercel domains ls

# Re-add domain
vercel domains add sang-{variant}.vercel.app
```

### Wrong Variant Showing
1. Check environment variable: `VITE_VARIANT`
2. Clear Vercel cache: Settings → Deployments → Clear Cache
3. Redeploy: `vercel --prod --force`

---

## 📊 Post-Deployment Checklist

- [ ] All 5 domains are accessible
- [ ] GitHub repository connected to each project
- [ ] Environment variables set correctly
- [ ] Production branch set to `main`
- [ ] Auto-deploy on push enabled
- [ ] Custom SSL certificates active
- [ ] Analytics enabled for each project

---

## 🎯 Next Steps

1. **Deploy all 4 variants** using commands above
2. **Connect GitHub** for automatic deployments
3. **Test each variant** to ensure correct branding
4. **Monitor analytics** in Vercel Dashboard
5. **Set up alerts** for deployment failures

---

**Last Updated:** March 8, 2026  
**Author:** Imam Sanghaar (@imsanghaar)  
**AI Partner:** Qwen-Code (@qwen-code)
