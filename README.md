# WhatsApp Clone in Flutter

This is a clone of the popular instant messaging app WhatsApp built using the Flutter framework. The purpose of this project is to showcase how to build a real-world app using Flutter and provide developers with a reference implementation they can use as a starting point for their own projects.

## Getting Started

### Prerequisites

Before you can run this app, you need to have the following tools installed on your machine:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)

### Installation

1. Clone the repository:

   ```
   git clone https://github.com/your-username/whatsapp-clone-flutter.git
   ```

2. Change the current directory to the project directory:

   ```
   cd whatsapp-clone-flutter
   ```

3. Install the dependencies:

   ```
   flutter pub get
   ```

4. Run the app:

   ```
   flutter run
   ```

## Features

This WhatsApp clone has the following features:

- User authentication (signup and login)
- User profile management (change profile picture and status)
- Chatting with other users (sending and receiving text messages, images, and emojis)
- Group chatting (creating and joining groups, sending messages to groups)

## Architecture

This app follows the [Flutter Bloc](https://pub.dev/packages/riverpod) architecture pattern, which separates the UI, business logic, and data layers of the app. The app is divided into the following layers:

- Presentation layer: This layer contains the UI code and is responsible for rendering the app's views and handling user input. It uses the [Flutter Material Design](https://flutter.dev/docs/development/ui/widgets/material) library for building the UI components.
- Business logic layer: This layer contains the app's business logic, such as user authentication, chat message processing, and group management. It uses the [Flutter Bloc](https://pub.dev/packages/riverpod) library to implement the BLoC pattern.
- Data layer: This layer contains the app's data sources, such as local storage and network services. It uses the [Firebase](https://firebase.google.com/) platform for backend services.

## Contributing

We welcome contributions to this project. To contribute, please follow these steps:

1. Fork the repository.

2. Create a new branch for your changes:

   ```
   git checkout -b feature/WhatappClone-Flutter
   ```

3. Make your changes and commit them with a descriptive commit message:

   ```
   git commit -m "inital commit"
   ```

4. Push your changes to your fork:

   ```
   git push origin feature/WhatappClone-Flutter
   ```

5. Create a pull request to merge your changes into the main branch of the original repository.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT). Feel free to use and modify this project for your own purposes.
