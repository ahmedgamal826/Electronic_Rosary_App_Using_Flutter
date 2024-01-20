import 'package:flutter/material.dart';

import 'custom_card.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({super.key, required this.txt1, required this.txt2});

  final String txt1, txt2;

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int counter = 100;
  double percent = 1.0;

  void Number() {
    setState(() {
      counter = 100;
    });
  }

  void zeroCounter() {
    setState(() {
      percent = 1;
    });
  }

  void subCountNumber() {
    setState(() {
      if (counter == 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.brown,
            content: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Number();
                    zeroCounter();
                  },
                  child: Text(
                    'إعادة التسبيح',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                SizedBox(
                  width: 150,
                ),
                Text(
                  'أحسنت',
                  style: TextStyle(fontSize: 23),
                ),
              ],
            ),
          ),
        );
        counter = 0;
      } else {
        counter = counter - 1;
        percent = percent - .01;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        CustomCard(
          txt1: widget.txt1,
          txt2: widget.txt2,
        ),
        SizedBox(
          height: 30,
        ),
        Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left: 115, top: 110),
            child: Text(
              '$counter',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: 280,
            height: 280,
            child: CircularProgressIndicator(
              backgroundColor: Colors.brown,
              color: Colors.brown.shade200,
              value: percent,
              strokeWidth: 20,
            ),
          ),
        ]),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                zeroCounter();
                Number();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: CircleAvatar(
                  backgroundColor: Colors.brown.shade200,
                  radius: 50,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'إعادة ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'التسبيح ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 100,
            ),
            GestureDetector(
              onTap: () {
                subCountNumber();
              },
              child: CircleAvatar(
                backgroundColor: Colors.brown,
                radius: 50,
                child: Text(
                  'تسبيح',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
