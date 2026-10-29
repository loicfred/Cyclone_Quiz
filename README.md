# Cyclone Quiz

**Mauritius Cyclone Survival Guide**: a Flutter app that teaches cyclone safety in Mauritius and then tests it with a quiz.

Built for the Advanced Mobile Application Development module, year 3.

## Screenshots
<!-- add screenshots here -->

## What it does
The title screen offers two paths: **Learn Topic** or **Start Quiz**.

### Learn Topic
A reading screen that covers:
- **What a cyclone is**, and what it is called in each region: hurricanes, typhoons and cyclones.
- **Key characteristics**: wind speeds, rainfall, storm surges, size, and the warm water they form over.
- **Do's** before, during and after a cyclone, such as preparing an emergency kit, securing your home and knowing your nearest shelter.
- **Don'ts** before, during and after a cyclone, such as going outside during the eye, using candles, or drinking tap water before it is declared safe.
- **Why these measures matter**, followed by a conclusion.

### Start Quiz
Fifteen multiple-choice questions in three sections of five:
1. **About Cyclone**: what a cyclone is, wind speed thresholds, warning classes, and the cyclone season in Mauritius.
2. **What To Do**: preparation, shelter and emergency supplies.
3. **What NOT To Do**: the dangerous mistakes during and after a storm.

Each question has four options (A to D). Once you answer, the right option turns green with a tick and a wrong pick turns red with a cross. A progress bar shows how far through the section you are, and the score carries over from one section to the next.

### Results
The results screen shows:
- Your score out of 15, on a progress ring coloured green, orange or red.
- A grade from A+ to F.
- A message that depends on how well you did.

**Try Again** goes back to the title screen.

## Built with
- Flutter and Dart
- Material and Cupertino widgets, with Cupertino page transitions
- No packages beyond Flutter itself, and no network or database: everything runs on the device.

## Project layout
| File | What it holds |
|---|---|
| `lib/main.dart` | The entry point, the shared `MyScaffold`, and the quiz data (`Section`, `Question` and the three sections). |
| `lib/title.dart` | The title screen. |
| `lib/topic.dart` | The Learn Topic reading screen. |
| `lib/mcq.dart` | A quiz section: the progress bar, each question and its answer feedback. |
| `lib/results.dart` | The score, grade and message. |

## Run it
```
flutter pub get
flutter run
```
It runs on Android, iOS, the web, Windows, macOS and Linux.
