# 🎬 Mini Anime App (UI Only) – Clean Architecture

This is a *UI-only Flutter application* implemented using *Clean Architecture principles*.  
The goal was to practice writing *clean, maintainable code* and separating concerns even in a simple UI app.

---

## 📱 Features
- Pixel-perfect UI based on provided Figma design  
- Layered architecture (Presentation, Domain, Data)  
- Modular & reusable widgets  
- Clean Code practices  

---

## 🏗 Architecture Decisions
Even though the app is UI-only, the project is structured using *Clean Architecture*:

- *Presentation Layer*  
  - Handles UI & State management (Cubit in this case).  

- *Domain Layer*  
  - Defines entities and use-cases (even if mocked).  

- *Data Layer*  
  - Provides mock data (to simulate API responses).  

This structure ensures scalability if future features (e.g., API integration) are added.

---

## 📂 Project Structure
---
lib
│── core
│
├── featuters
│   └── home
│       ├── data
│       ├── logic
│       └── presenation
│           ├── cubit
│           ├── screens
│           └── widget


## 🖼 Screenshots

### Home Screen  
![Home Screen](assets\images\home.jpg)

### Anime Details  
![Anime Details](assets\images\detils.jpg)

### upgrade / upgrade Screen  
![Favorites Screen](assets\images\upgrade.jpg)

---

## 🚀 Getting Started
1. Clone the repository
2. Run flutter pub get
3. Run flutter run

---

## 🛠 Tech Stack
- Flutter  
- Dart  
- Clean Architecture  
- State Management: Cubit
