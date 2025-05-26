import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appData: AppData

    var body: some View {
        Text(appData.displayText)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding() // Add some padding for better visual appearance
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppData()) // Provide a dummy AppData for preview
    }
}
