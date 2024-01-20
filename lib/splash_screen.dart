import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 100,
      height: 100,
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.red),
              child: Image.asset('assets/AzkarImage.jpg')),
          const SizedBox(
            height: 20,
          ),
          const Text(
            ' 👈 اسحب الشاشة يسار للتسابيح',
            style: TextStyle(fontSize: 30, color: Colors.brown),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            height: 200,
            child: Image.asset(
              'assets/tasbih.png',
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
