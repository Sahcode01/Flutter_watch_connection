import SwiftUI

// UI on Apple Watch written in SwiftUI

struct ContentView: View {
    @ObservedObject private var manager = WatchCommunicationManager()
    var body: some View {
        VStack {
            Text(manager.text ?? "🤔").font(.headline)
            Spacer()
            HStack{
                Button(action: sendAndroid) {
                    Text("🤖")
                        .font(.body)
                }
                Button(action: sendApple) {
                    Text("🍎")
                        .font(.body)
                }
            }
            HStack{
                Button(action: sendBlur) {
                    Text("🌫️")
                        .font(.body)
                }
                Button(action: sendWallet) {
                    Text("💳")
                        .font(.body)
                }
            }
        }
        .padding()
    }
    private func sendAndroid() {
        manager.updateText("Android")
    }
    private func sendApple() {
        manager.updateText("Apple")
    }
    private func sendBlur() {
        manager.updateText("Blur")
    }
    private func sendWallet() {
        manager.updateText("Wallet")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
