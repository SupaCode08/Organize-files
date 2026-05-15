# 📂 File Organizer Script (Pure Batch)

A fast, lightweight, and efficient Windows Batch script to automatically organize your cluttered folders into categorized subdirectories.

ภาษาไทย: สคริปต์ Batch สำหรับจัดระเบียบไฟล์อัตโนมัติ แบ่งหมวดหมู่ตามนามสกุลไฟล์อย่างรวดเร็ว

## 🚀 Features
- **Categorization**: Automatically moves files into 7 main categories:
  - `Images`: .jpg, .png, .webp, .svg, etc.
  - `Documents`: .pdf, .docx, .txt, .xlsx, etc.
  - `Archives`: .zip, .rar, .7z, .iso
  - `Videos`: .mp4, .mkv, .mov, etc.
  - `Audio`: .mp3, .wav, .flac, etc.
  - `Installers`: .exe, .msi, .apk
  - `Data & Code`: .py, .js, .cpp, .html, .json, etc.
- **Smart Conflict Handling**: If a file with the same name exists, it adds a timestamp to avoid overwriting.
- **Pure Batch**: No external dependencies or software required.

## 🛠️ Usage
1. Copy `organizer.bat` to the folder you want to organize (e.g., Downloads or Desktop).
2. Double-click `organizer.bat`.
3. Sit back while it cleans up your folder!

---

## 🛠️ วิธีใช้งาน
1. คัดลอกไฟล์ `organizer.bat` ไปไว้ในโฟลเดอร์ที่ต้องการจัดระเบียบ (เช่น Downloads หรือ Desktop)
2. ดับเบิลคลิกที่ไฟล์ `organizer.bat`
3. ไฟล์จะถูกแยกเข้าโฟลเดอร์ตามหมวดหมู่โดยอัตโนมัติ

## ⚠️ Security
This script only performs `move` operations within its current directory. It does not delete any files.

Developed by [Au (SupaCode08)](https://github.com/SupaCode08)
