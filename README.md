# WeSplit-App

A simple SwiftUI application to split the bill among friends with the option to include a tip.

## Credits and Acknowledgements

The WeSplit app was developed as a code-along project following the tutorials provided by [Hacking with Swift](https://www.hackingwithswift.com/100/swiftui). It's a part of their "100 Days of SwiftUI" challenge, which offers comprehensive, hands-on lessons on SwiftUI.

This project provided an excellent opportunity to explore the intricacies of SwiftUI, guided by the resources and tutorials provided by Hacking with Swift. The step-by-step approach ensured that every concept and its implementation were thoroughly understood.

Thanks again to [Hacking with Swift](https://www.hackingwithswift.com) for providing this educational content for beginners.

## Features

- **Bill Input**: Enter the amount of the bill.
- **Number of People**: Select the number of people to split the bill between.
- **Tip Percentage**: Navigate to a new screen to select a tip percentage from a range of 0% to 100%.
- **Calculate Amount per Person**: Displays the amount each person has to pay, including their share of the tip.
- **Calculate Total**: Displays the total bill amount, including the tip.

## Screenshots

<img src="(https://user-images.githubusercontent.com/79545798/278840193-3ca14aa1-d982-48ce-9675-72d73d95d0df.png)" alt="Screenshot of WeSplit App" width="300">

## What I Learned

During the development of the WeSplit app, I gained several valuable insights and lessons:

- **SwiftUI Basics**: I became familiar with fundamental SwiftUI components such as `Form,` `Section,` `Picker,` and `NavigationLink.` I learned how to structure UI elements within SwiftUI's declarative syntax effectively.
- **State and Binding**: I understood the power of property wrappers such as `@State` and `@Binding`. I grasped how they enable data flow and communication between different views, ensuring a smooth user experience and dynamic UI updates.
- **Navigation**: I delved into SwiftUI's navigation system, particularly how to navigate between views using `NavigationLink` and how to manage the navigation stack.
- **UI Customization**: I explored different picker styles and learned how to switch from a segmented control to a more detailed screen, giving users a broader range of choices.
- **Focus Management**: I gained hands-on experience with the `@FocusState` property wrapper, which helped manage the keyboard's visibility and improve the user input experience.
- **Data Iteration**: I used the `ForEach` view to iterate over ranges and arrays, dynamically populating UI components based on data.
- **Formatting and Localization**: I grasped the importance of localization by dynamically fetching the currency based on the user's locale and appropriately formatting numbers.
- **Code Refactoring**: I recognized the importance of reducing redundancy in code. By splitting computations into computed properties, the code became cleaner, more readable, and easier to maintain.

## Getting Started

### Prerequisites

- macOS with the latest version of Xcode installed.
- SwiftUI knowledge for understanding the codebase.

### Installation

1. Clone the repo:
```sh
git clone https://github.com/your_username/WeSplit.git
```
2. Open the project in Xcode.
3. Build and run the app on the desired simulator or device.

## Usage

1. Enter the bill amount.
2. Select the number of people.
3. Navigate to the tip percentage screen and choose a tip percentage.
4. Review the calculated amounts displayed.
