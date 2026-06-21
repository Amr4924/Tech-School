<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:4A148C,100:9C27B0&height=220&section=header&text=Tech%20School&fontSize=68&fontColor=ffffff&animation=fadeIn&fontAlignY=35&desc=A%20Flutter%20E-Learning%20App%20UI&descAlignY=58&descSize=18&descColor=ffffff" width="100%"/>

<img src="https://readme-typing-svg.demolab.com/?font=Fira+Code&size=20&pause=1000&color=B388FF&background=00000000&center=true&vCenter=true&width=650&height=45&lines=A+Flutter+E-Learning+App+UI;Built+while+learning+mobile+dev+fundamentals;Onboarding+-%3E+Login+-%3E+Home+-%3E+Courses+-%3E+Profile" alt="Typing SVG" />

<br/>

<img src="https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white" />
<img src="https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white" />
<img src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS-9C27B0?style=for-the-badge" />
<img src="https://img.shields.io/badge/Status-Learning%20Project-7B2FF7?style=for-the-badge" />

<br/>

<img src="https://img.shields.io/github/stars/Amr4924/Tech-School?style=for-the-badge&color=B388FF" />
<img src="https://img.shields.io/github/last-commit/Amr4924/Tech-School?style=for-the-badge&color=4A148C" />
<img src="https://img.shields.io/github/repo-size/Amr4924/Tech-School?style=for-the-badge&color=9C27B0" />

<br/><br/>

*Built while learning Flutter — sharing the process, not just the polished result.*

</div>

<br/>

## 📖 Overview

**Tech School** is a Flutter UI project I built while learning mobile development fundamentals. It's a complete, navigable e-learning app concept — from the very first onboarding swipe to a working login form, a home dashboard, a course catalog, and a profile screen — all wired together with real navigation instead of static screenshots.

This is currently a **frontend/UI prototype**: every screen renders and feels real, but the data is local mock data and there's no backend behind it yet. That part is intentional — the goal of this project was to get comfortable with Flutter's core building blocks before adding real services on top.

## ✨ Features

**🚪 Onboarding**
- 3-page swipeable intro (`PageView`) introducing the app
- Custom illustrations + a "Get Started" CTA into the login flow

**🔐 Login**
- Email + password form with live validation (valid email format, 8+ character password)
- Password visibility toggle
- Friendly `SnackBar` feedback when the form is incomplete

**🏠 Home**
- Search bar and a promo/advertising banner slot
- "Your Progress" tracker with animated linear progress bars across 5 languages
- Horizontally scrollable "Programming Paths" avatars
- Side drawer with profile summary, quick links, and social icons

**📚 Courses**
- Catalog of **15 mock courses** across 7 categories (Web, Cross-platform, Mobile, Database, DevOps, Security, Foundations)
- Responsive 2-column grid of course cards with image, category tag, price (in EGP), and an "Enroll Now" CTA
- Category filter chips and a bookmark/cart icon in the app bar (UI in place, ready to be wired up — see [Roadmap](#️-roadmap))

**👤 Profile**
- Student info card (name, email, phone) with an edit shortcut
- Same progress tracker as Home, reused as a shared widget
- Drawer with Settings, Help & Support, and a working **Log Out** flow that returns you to the login screen

**🎨 Design**
- Consistent purple Material theme across every screen
- Shared, reusable widgets (search bar, progress bar, drawer, advertising card) instead of duplicated code per screen

> 💡 **Tip for testers:** there's no backend yet, so the login accepts anything that *looks* valid — e.g. `test@test.com` / `12345678` gets you straight into the app.

## 📸 Preview

<div align="center">
<table>
<tr>
<td align="center" width="33%"><img src="assets/img1.png" width="100%"/><br/><sub>Onboarding · Step 1</sub></td>
<td align="center" width="33%"><img src="assets/img2.png" width="100%"/><br/><sub>Onboarding · Step 2</sub></td>
<td align="center" width="33%"><img src="assets/img3.png" width="100%"/><br/><sub>Onboarding · Step 3</sub></td>
</tr>
</table>
</div>

> 📌 **Note:** Login, Home, Courses, and Profile screenshots (or a short demo GIF) go here next — run the app on an emulator/device, record the flow, and drop the images into this section.

## 🧰 Tech Stack

| | |
|---|---|
| **Language** | Dart (SDK `^3.12.1`) |
| **Framework** | Flutter, Material widgets only |
| **State management** | `StatefulWidget` + `setState` (no external state library yet) |
| **Packages** | [`cupertino_icons`](https://pub.dev/packages/cupertino_icons), [`smooth_page_indicator`](https://pub.dev/packages/smooth_page_indicator) |
| **Data** | Local mock data (`List<Map>`), no backend or persistence |

## 🗂️ Project Structure

```
lib/
├── main.dart                  # App entry point & theme
├── on_boarding_Screen.dart    # 3-page onboarding flow
├── login.dart                 # Login screen + form validation
├── mainScreen.dart            # Bottom navigation shell (Home / Courses / Profile)
└── nav_bar/
    ├── home.dart               # Home dashboard
    ├── courses.dart            # Course catalog + shared drawer & advertising card widgets
    └── profile.dart            # Profile, progress tracker & logout flow
```

## 🚀 Getting Started

**Prerequisites**
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (stable channel)
- Android emulator / iOS simulator, or a physical device

**Run it locally**
```bash
git clone https://github.com/Amr4924/Tech-School.git
cd Tech-School
flutter pub get
flutter run
```

## 🧠 What I Practiced Building This

- `StatefulWidget` lifecycle and `setState` for UI updates
- `Form` + `TextFormField` validation with custom error messages
- Page navigation with `Navigator.push` / `Navigator.pop`
- `ListView.builder` and `GridView.builder` for dynamic, data-driven lists
- Building small, reusable widgets and sharing them across files via imports
- Custom theming: shadows, rounded containers, and a consistent color palette

## 🛣️ Roadmap

Things I know are missing and plan to come back to:

- [ ] Wire up the category filter chips on the Courses screen (they currently don't filter)
- [ ] Make the search bars actually search
- [ ] Add `smooth_page_indicator` dots to the onboarding `PageView` (the package is already a dependency)
- [ ] Fill in the empty advertising/promo card on Home & Courses
- [ ] Real state management (Provider / Riverpod / Bloc)
- [ ] Real authentication (Firebase Auth or a REST API) instead of client-side-only validation
- [ ] Course details page + enroll/checkout flow
- [ ] Persist user session & course progress
- [ ] Widget/unit tests
- [ ] Rename the package id (currently the default `com.example.app2`) before any real release

## 🙋 About Me

I'm Amr — a CS & AI student learning Flutter one project at a time, and documenting the journey in public.

<div align="center">

[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Amr4924)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](#)

*(swap the LinkedIn link above with your profile URL)*

⭐ If you found this project useful or interesting, a star is always appreciated!

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:4A148C,100:9C27B0&height=120&section=footer&animation=fadeIn" width="100%"/>