import 'package:flutter/material.dart';
import 'package:zmusic/screens/home_page.dart';

void main() {
  runApp(ZMusic());
}

class ZMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


