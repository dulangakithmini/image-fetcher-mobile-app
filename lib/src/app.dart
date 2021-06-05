// Import flutter helper library
import 'package:flutter/material.dart';

// Create App class extending StatefulWidget in order to refactor Stateless into Stateful
class App extends StatefulWidget {}

// Create AppState class extending State<App>
class AppState extends State<App> {
  // Define a build method that returns the widgets that this widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Let\'s see some images!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Hi');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

// Create a class for custom widget. This should extend the StatelessWidget base class
// class App extends StatelessWidget {
// Define a build method that returns the widgets that this widget will show
// Widget build(context) {
//   return MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Let\'s see some images!'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print('Hi');
//         },
//         child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
