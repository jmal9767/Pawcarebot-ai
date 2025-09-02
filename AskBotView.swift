import SwiftUI
import OpenAI  // Add via Swift Package Manager

struct AskBotView: View {
    @State private var question = ""
    @State private var response = ""
    @StateObject private var networkMonitor = NetworkMonitor()
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Ask about pet care...", text: $question)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("Send") {
                Task { response = await getResponse() }
            }
            .buttonStyle(.borderedProminent)
            Text(response)
                .padding()
                .multilineTextAlignment(.center)
            Text("Disclaimer: This is not veterinary advice. Consult a professional for emergencies.")
                .font(.footnote)
                .foregroundColor(.red)
                .padding()
        }
        .navigationTitle("AskBot")
    }
    
    private func getResponse() async -> String {
        if networkMonitor.isConnected {
            let service = OpenAIService()
            do {
                var aiResponse = try await service.queryAI(question: question)
                aiResponse += "\n\nFor emergencies, contact a vet immediately."
                return aiResponse
            } catch {
                return "Error: Please try again."
            }
        } else {
            return "Offline: Using cached response (implement local cache here)."
        }
    }
}
