# CLITextDisplayer macOS Application

CLITextDisplayer is a simple macOS application that displays a string of text provided as a command-line argument.

## Prerequisites

*   macOS
*   Xcode (latest version recommended)

## Project Setup

This project is intended to be opened directly in Xcode.

1.  **Ensure you have the complete project folder**, including the `CLITextDisplayer.xcodeproj` file (if provided, or if you have created one around these source files).
2.  If you only have the source files (`CLITextDisplayerApp.swift`, `ContentView.swift`, `AppData.swift`, `Info.plist`), you would first need to create a new macOS App project in Xcode and add these files to it. However, the instructions below assume you are opening an existing, complete Xcode project.

## Building the Application

1.  **Open the Project in Xcode**:
    *   Navigate to the root directory of the `CLITextDisplayer` project.
    *   Double-click the `CLITextDisplayer.xcodeproj` file to open it in Xcode.
    *   Alternatively, if Xcode is already open, choose **File > Open...** and navigate to the project directory.

2.  **Build the Project**:
    *   Once the project is open in Xcode, select your Mac (or a simulator) as the build target from the scheme selector in the toolbar (e.g., "My Mac").
    *   Choose **Product > Build** from the Xcode menu bar (or press `⌘B`).

3.  **Locate the Built Application**:
    *   By default, Xcode places build products in a "DerivedData" folder.
    *   A more convenient way to find the app: After a successful build, look for the "Products" group in the Xcode Project Navigator (usually at the bottom of the file list).
    *   Inside "Products", you should see `CLITextDisplayer.app`. You can right-click on it and select "Show in Finder" to locate the application bundle.

## Running the Application from Xcode

1.  **Run Directly**:
    *   Choose **Product > Run** from the Xcode menu bar (or press `⌘R`).
    *   The application will launch. If no arguments are passed, it will display "No text provided."

2.  **Passing Command-Line Arguments in Xcode**:
    *   In Xcode, click on the scheme editor. This is usually the active scheme shown next to the play/stop buttons (e.g., "CLITextDisplayer"). Click on it and choose "Edit Scheme...".
    *   In the Scheme editor window, select the "Run" action from the left sidebar.
    *   Go to the "Arguments" tab.
    *   In the "Arguments Passed On Launch" section, click the "+" button to add a new argument.
    *   Enter the text you want to display, for example: `"Hello from Xcode!"` (including quotes if your string has spaces).
    *   Close the Scheme editor.
    *   Now, when you run the application (Product > Run or `⌘R`), it will display the argument you provided.

## Running the Application from the Command Line

1.  **Locate the Executable**:
    *   First, build the application in Xcode (Product > Build).
    *   Find `CLITextDisplayer.app` in the "Products" group in Xcode's Project Navigator.
    *   Right-click on `CLITextDisplayer.app` and select "Show in Finder".

2.  **Navigate to the Executable in Terminal**:
    *   Open the Terminal application.
    *   The actual executable is inside the `.app` bundle. If `CLITextDisplayer.app` is, for example, in `~/Desktop/Build/Products/Debug/`, you would navigate to it like this:
        ```bash
        cd ~/Desktop/Build/Products/Debug/CLITextDisplayer.app/Contents/MacOS/
        ```
    *   You can also drag the `CLITextDisplayer.app` bundle from Finder directly onto the Terminal window after typing `cd `, then manually append `/Contents/MacOS/` to the path.

3.  **Run the Executable with an Argument**:
    *   Once in the `MacOS` directory, you can run the executable. The executable will have the same name as your product, "CLITextDisplayer".
    *   To run it with a text argument:
        ```bash
        ./CLITextDisplayer "Your text message here!"
        ```
    *   For example:
        ```bash
        ./CLITextDisplayer "Hello, Command Line!"
        ```
    *   The application window will appear, displaying the text you provided. If the text contains spaces, ensure it's enclosed in quotes.

    *   If you run it without arguments:
        ```bash
        ./CLITextDisplayer
        ```
        It will display "No text provided."

    *   If you run it with multiple arguments:
        ```bash
        ./CLITextDisplayer "Hello" "World"
        ```
        It will display "Error: Please provide a single string argument".
