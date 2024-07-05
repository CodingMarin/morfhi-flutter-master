# Morfhi Application Android

Morfhi is a Flutter application designed to manage various functionalities. It includes authentication, user registration, and a challenge section.

## Features

- **Authentication**: Includes login, user registration, and password recovery.
- **Get Started Screen**: An initial page to get started with the app.
- **Challenges**: A section to view and manage created challenges.
- **Tasks Management**: Allows users to create and manage tasks with different details such as title, description, category, price, location, and task steps.

## Installation

To run this project locally, make sure you have Flutter installed and set up with a device or emulator. Then, follow these steps:

1. Clone this repository.
2. Run `flutter pub get` to install dependencies.
3. Ensure Firebase is configured with the appropriate credentials in `firebase_options.dart`.
4. Run the app using `flutter run`.

## Project Structure

The project is organized into different folders:

- **screens/auth/**: Contains authentication screens like login, registration, and password recovery.
- **screens/getstarted.dart**: Initial start screen of the application.
- **screens/challenge/**: Contains logic and screens related to challenges.
- **manager/tasks/**: Contains the `Tasks` widget for task creation and management.
- **manager/viewtasks/**: Placeholder for future functionality related to viewing tasks.

## `Tasks` Widget

The `Tasks` widget (`manager/tasks/tasks.dart`) allows users to create and manage tasks. It includes form validations and step-by-step task creation.

## `ViewTasks` Widget

The `ViewTasks` widget (`manager/viewtasks/viewtasks.dart`) is currently under development for viewing tasks. It will provide functionality to display and interact with created tasks.

## Contribution

If you want to contribute to this project, follow these steps:

1. Fork the repository.
2. Create a branch (`git checkout -b feature/new-feature`).
3. Make your changes and commit (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Open a Pull Request.

## Technologies Used

- Flutter
- Firebase (for authentication)

## Screenshots

(If you have screenshots of the app in action, it would be good to include them here).

## License

This project is licensed under the MIT License. For more details, see the LICENSE file.
