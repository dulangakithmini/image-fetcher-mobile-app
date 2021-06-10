import 'package:flutter/material.dart';
import 'package:pics/src/models/image_model.dart';

/// ImageList does not change the list of images and re-render itself. Its is changed by AppState. Therefore ImageList is a StatelessWidget
class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildContainer(index);
      },
    );
  }

  Container buildContainer(int index) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black,
        width: 1.0,
        style: BorderStyle.solid,
      )),
      child: Column(
        children: [
          Image.network(images[index].url),
          Text(images[index].title),
        ],
      ),
    );
  }
}
