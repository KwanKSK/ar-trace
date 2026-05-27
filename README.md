# AR Trace - Android APK

Trace drawings on paper using your phone camera.

## How to get the APK

### Option A: GitHub Actions (easiest - no setup needed)

1. Create a new GitHub repo
2. Push this folder to it:
   ```bash
   cd ar-trace-app
   git init
   git add .
   git commit -m "AR Trace app"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/ar-trace.git
   git push -u origin main
   ```
3. Go to your repo → Actions tab → "Build APK" will run automatically
4. Once done, click the workflow run → download `AR-Trace-debug` artifact
5. Transfer the APK to your phone and install it

### Option B: Build locally with Android Studio

1. Open Android Studio
2. File → Open → select the `android/` folder
3. Wait for Gradle sync
4. Build → Build Bundle(s) / APK(s) → Build APK(s)
5. APK will be at `android/app/build/outputs/apk/debug/app-debug.apk`

### Option C: Build from command line (requires Android SDK)

```bash
export ANDROID_HOME=~/Library/Android/sdk
npm run sync
npm run build
```

## Features

- Live camera feed (always on)
- Load reference image overlay
- Modes: Original / No BG / Outline / B&W / Light Lines
- Background removal with color picker
- Adjust opacity, scale, sharpness
- Pinch to zoom, drag to move
- Flip, rotate, invert
- Grid overlay
- Screen stays on while tracing
