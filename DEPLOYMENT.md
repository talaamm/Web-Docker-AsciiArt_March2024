# Deployment Guide for Go ASCII Art Application

Your Go application can be deployed to several free hosting platforms. Here are the best options:

## 🚀 Option 1: Railway (Recommended)

**Free Tier**: $5 credit monthly (enough for small apps)

### Steps:
1. **Sign up** at [railway.app](https://railway.app)
2. **Connect your GitHub repository**
3. **Deploy automatically** - Railway will detect it's a Go app
4. **Get your URL** - Your app will be live at `https://your-app-name.railway.app`

### Why Railway?
- ✅ Automatic Go detection
- ✅ Free tier with $5 credit
- ✅ Easy GitHub integration
- ✅ Automatic deployments
- ✅ Custom domains

---

## 🌐 Option 2: Render

**Free Tier**: 750 hours/month (enough for always-on)

### Steps:
1. **Sign up** at [render.com](https://render.com)
2. **Create New Web Service**
3. **Connect your GitHub repository**
4. **Configure**:
   - **Build Command**: `go build -o ascii-art main.go`
   - **Start Command**: `./ascii-art`
   - **Environment Variable**: `PORT=8000`
5. **Deploy** - Your app will be live at `https://your-app-name.onrender.com`

### Why Render?
- ✅ Generous free tier
- ✅ Easy configuration
- ✅ Automatic deployments
- ✅ Custom domains

---

## ☁️ Option 3: Fly.io

**Free Tier**: 3 shared-cpu VMs, 3GB persistent volume storage

### Steps:
1. **Install Fly CLI**: `curl -L https://fly.io/install.sh | sh`
2. **Sign up** at [fly.io](https://fly.io)
3. **Login**: `fly auth login`
4. **Deploy**: `fly launch`
5. **Your app** will be live at `https://your-app-name.fly.dev`

### Why Fly.io?
- ✅ Very generous free tier
- ✅ Global edge deployment
- ✅ Docker-based
- ✅ Custom domains

---

## 🐳 Option 4: Google Cloud Run

**Free Tier**: 2 million requests/month, 360,000 vCPU-seconds, 180,000 GiB-seconds

### Steps:
1. **Sign up** for Google Cloud Platform
2. **Enable Cloud Run API**
3. **Install gcloud CLI**
4. **Deploy**:
   ```bash
   gcloud run deploy ascii-art --source .
   ```
5. **Your app** will be live at the provided URL

### Why Google Cloud Run?
- ✅ Very generous free tier
- ✅ Pay only for what you use
- ✅ Automatic scaling
- ✅ Global deployment

---

## 📋 What I've Prepared for You:

### ✅ Updated Files:
- **`railway.json`** - Railway configuration
- **`Procfile`** - Railway deployment file
- **`render.yaml`** - Render configuration
- **Updated `main.go`** - Now uses environment variables for port

### ✅ Key Changes Made:
- Added environment variable support for `PORT`
- Created platform-specific configuration files
- Made the app cloud-ready

---

## 🎯 My Recommendation:

**Start with Railway** because:
1. **Easiest setup** - Just connect GitHub and deploy
2. **Good free tier** - $5 credit monthly
3. **Automatic Go detection** - No complex configuration
4. **Fast deployments** - Usually takes 2-3 minutes

---

## 🚨 Important Notes:

1. **All platforms require** your Go app to use environment variables for the port (✅ Done!)
2. **Static files** (templates folder) will be included automatically
3. **Your app will be accessible** via HTTPS automatically
4. **Custom domains** are available on all platforms

---

## 🆘 Need Help?

If you run into issues with any platform, let me know and I can help you troubleshoot the specific deployment! 