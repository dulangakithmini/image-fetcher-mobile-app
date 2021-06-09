// To get json related functions
import 'dart:convert';

// Import flutter helper library
import 'package:flutter/material.dart';
//Import get from http.dart from http package
import 'package:http/http.dart' show get;
import 'package:pics/src/widgets/image_list.dart';

// Import image model
import 'models/image_model.dart';

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
          //Since this is a function calling another function, we don't have to write the outer function
          // onPressed: () {
          //   fetchImage();
          // }

          // Passing a reference to the fetchImage method
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
        //Display the button click count
        body: ImageList(images),
      ),
    );
  }

  // Make an HTTP request to the outside API, fetch the json for one image and create an instance of the new ImageModel class out of it
  void fetchImage() async {
    List<ImageModel> images = [];

    // Increment the counter variable on FloatingActionButton press
    // counter += 1;

    //Increment counter by 1 since photo ids start with 1
    counter++;
    // Make a request to json API endpoint using get function
    // Add counter variable as the id of the photo
    var response = await get(Uri.dataFromString(
        'http://jsonplaceholder.typicode.com/photos/$counter'));
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    // Call the setState() when AppState class's data changes. Modify the data inside the function that is passed to setState()
    setState(() {
      // counter += 1;
      images.add(imageModel);
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
