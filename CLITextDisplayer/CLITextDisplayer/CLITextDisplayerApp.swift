import SwiftUI
import AppKit // Import AppKit for NSApplication

@main
struct CLITextDisplayerApp: App {
    @StateObject private var appData = AppData()

    init() {
        let arguments = CommandLine.arguments
        if arguments.count == 2 {
            appData.displayText = arguments[1]
        } else if arguments.count > 2 {
            appData.displayText = "Error: Please provide a single string argument"
        } else {
            appData.displayText = "No text provided"
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appData)
                .onAppear {
                    // Bring the window to the front
                    NSApp.activate(ignoringOtherApps: true)
                }
        }
    }
}
