import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const Electronic_rosary());
}

class Electronic_rosary extends StatelessWidget {
  const Electronic_rosary({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
