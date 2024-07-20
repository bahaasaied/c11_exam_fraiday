import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String label;

  const Buttons({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(label),
      ),
    );
  }
}

List<String> labels = [
  'Art',
  'Business',
  'Comedy',
  'Drama',
  'More',
];