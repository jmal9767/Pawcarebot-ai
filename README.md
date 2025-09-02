# PawCareBot

PawCareBot is a free, open-source SwiftUI iOS app designed for pet owners to get AI-powered guidance, track symptoms, and log health details. Built with a focus on accessibility, offline functionality, and family-friendly design, it aims to create engaging, helpful experiences without any paid tiers or restrictions.

## Features

- **AskBot**: An AI chatbot for pet care questions, powered by OpenAI (e.g., GPT-3.5). Includes automatic disclaimers and emergency guidance in responses.
- **Check**: Symptom tracker with health trend visualizations (using Swift Charts) and integration with AskBot for context-aware advice.
- **Logs**: Journal for vaccinations, medications, and behavioral notes, with dashboards for insights.
- **Offline Support**: Works without internet using local storage (Core Data) and queues data for syncing.
- **Additional**: Animations for smooth UI, accessibility features (e.g., VoiceOver), and secure API handling via Keychain.

This app is not a substitute for professional veterinary advice—always consult a vet for health concerns.

## Getting Started

### Prerequisites
- Xcode 15+ (for iOS 17+ development).
- Swift Package Manager for dependencies (e.g., OpenAI library).
- An OpenAI API key (stored securely—never commit it to the repo).

### Installation
1. Clone the repository:
   ```
   git clone https://github.com/jmal9767/PawCareBot.git
   cd PawCareBot
   ```
2. Open in Xcode: Double-click `PawCareBot.xcodeproj`.
3. Install dependencies: In Xcode, go to File > Add Packages and add `https://github.com/MacPaw/OpenAI` for AI integration.
4. Add your OpenAI API key: Use the Keychain functions in `OpenAIService.swift` to store it securely (e.g., call `storeAPIKey("your-key")` in a setup script—do not hardcode).
5. Build and run: Select a simulator or device in Xcode and press Cmd+R.

### Usage
- Launch the app to access the tab bar with AskBot, Check, and Logs.
- In AskBot, type a question (e.g., "How to care for a dog's upset stomach?") and submit—responses include disclaimers.
- Log symptoms in Check or notes in Logs; data persists offline and syncs when connected.

## Project Structure
- **PawCareBot/**: Main source code.
  - **Views/**: UI components (e.g., AskBotView.swift).
  - **Services/**: Logic like OpenAIService.swift and NetworkMonitor.swift.
  - **Models/**: Data structures (e.g., PetSymptom.swift).
- **Tests/**: Unit tests.
- **.github/workflows/**: CI/CD pipelines.

## Contributing
Contributions are welcome! Follow these steps:
1. Fork the repository.
2. Create a feature branch: `git checkout -b feature/new-enhancement`.
3. Commit changes: `git commit -m "Add new feature"`.
4. Push: `git push origin feature/new-enhancement`.
5. Open a pull request with a description of your changes.

Please adhere to Swift best practices, include tests, and ensure no sensitive data is added.

## License
This project is licensed under the MIT License—see the [LICENSE](LICENSE) file for details.

## Acknowledgments
- Built with SwiftUI and OpenAI for AI features.
- Inspired by pet care needs and creative app development.

For issues or suggestions, open a GitHub issue. Happy coding!