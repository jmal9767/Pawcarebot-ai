# Pawcarebot-ai

Pawcarebot-ai is a free, open-source SwiftUI iOS app designed for pet owners to get AI-powered guidance, track symptoms, and log health details. Built with a focus on accessibility, offline functionality, and family-friendly design, it aims to create engaging, helpful experiences without any paid tiers or restrictions.

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
