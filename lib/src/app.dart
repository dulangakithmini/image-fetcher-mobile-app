// Import flutter helper library
import 'package:flutter/material.dart';

// import 'my_column.dart';

// Create App class extending StatefulWidget in order to refactor Stateless into Stateful

class App extends StatefulWidget {
  // final int increment =5;
  // Implement createState
  @override
  State<StatefulWidget> createState() {
    // Return an instance of AppState
    return AppState();
  }
}

// Create AppState class extending State<App>
class AppState extends State<App> {
  // Add instance variables that represent the data that is going to change over time
  int counter = 0;

  // Define a build method that returns the widgets that this widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Let\'s see some images!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementCounter,
          child: Icon(Icons.add),
        ),
        //Display the button click count
        body: Text('Button is clicked $counter times!'),
      ),
    );
  }

  void incrementCounter() {
    // Increment the counter variable on FloatingActionButton press
    // counter += 1;

    // Call the setState() when AppState class's data changes. Modify the data inside the function that is passed to setState()
    setState(() {
      counter += 1;
    });
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

// class App2 extends StatefulWidget {
//   const App2({Key? key}) : super(key: key);
//
//   @override
//   _App2State createState() => _App2State();
// }
//
// class _App2State extends State<App2> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
