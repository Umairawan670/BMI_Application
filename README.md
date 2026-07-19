# ⚖️ BMI Calculator

A cross-platform Flutter application that calculates Body Mass Index (BMI) in real time using user-provided height and weight, with instant, color-coded health classification.

<!-- Replace the line below with your actual banner/hero screenshot -->
![BMI Calculator Banner](screenshots/banner.png)

## 📱 Screenshots

| Input Screen | Result — Healthy | Result — Underweight | Result — Overweight |
|:---:|:---:|:---:|:---:|
| ![Input](screenshots/<img width="446" height="841" alt="image" src="https://github.com/user-attachments/assets/d76a520b-2a80-4535-8623-bc4f8abdac8b" />
) | ![Healthy](screenshots/result_healthy.png) | ![Underweight](screenshots/result_under.png) | ![Overweight](screenshots/result_over.png) |

## ✨ Features

- 📱 Built entirely with Flutter & Dart — single codebase, multiple platforms
- ⚖️ Accurate BMI calculation using standard metric conversion (height/weight)
- ✅ Real-time input validation to prevent calculation errors
- 🎯 Automatic BMI classification: Underweight, Healthy, Overweight
- 🎨 Dynamic, color-coded result interface for instant visual feedback
- 📐 Clean, responsive Material Design UI

## 🛠️ Tech Stack

| Category | Technology |
|---|---|
| Framework | Flutter |
| Language | Dart |
| UI | Material Design |
| Architecture | Stateful Widget |
| IDE | Android Studio |

## ⚙️ How It Works

1. User enters weight and height (feet & inches)
2. The app converts height into meters
3. BMI is calculated using the standard formula: `BMI = weight (kg) / height (m)²`
4. The result is categorized as Underweight, Healthy, or Overweight
5. A color-coded result card displays instant visual feedback

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.x or later)
- Android Studio / VS Code with Flutter & Dart plugins

### Installation

```bash
# Clone the repository
git clone https://github.com/Umairawan670/BMI_Application.git
cd BMI_Application

# Install dependencies
flutter pub get

# Run the app
flutter run
```

## 📌 Roadmap / Future Improvements

- [ ] BMI history tracking with charts
- [ ] Metric/Imperial unit toggle
- [ ] Personalized health tips based on result
- [ ] Dark mode support

## 👤 Author

**Umair Awan**
- GitHub: [@Umairawan670](https://github.com/Umairawan670)
- LinkedIn: [linkedin.com/in/umairawan-812537300](https://linkedin.com/in/umairawan-812537300)

## 📄 License

This project is open source and available for learning
