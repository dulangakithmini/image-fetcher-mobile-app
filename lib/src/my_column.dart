import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Button is clicked  times!'),
        Text('Button is clicked times!'),
      ],
    );
  }
}
