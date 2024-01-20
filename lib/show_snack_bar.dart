import 'package:flutter/material.dart';

void showSnakeBar(BuildContext context, String message, String txtBtn) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.brown,
      content: Row(
        children: [
          Text(
            txtBtn,
            style: const TextStyle(fontSize: 25),
          ),
          const SizedBox(
            width: 150,
          ),
          Text(
            message,
            style: const TextStyle(fontSize: 25),
          ),
        ],
      ),
    ),
  );
}
