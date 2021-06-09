import 'package:flutter/material.dart';
import 'package:pics/src/models/image_model.dart';

/// ImageList does not change the list of images and re-render itself. Its is changed by AppState. Therefore ImageList is a StatelessWidget
class ImageList extends StatelessWidget {
  List<ImageModel> images;

  ImageList(this.images);
}
