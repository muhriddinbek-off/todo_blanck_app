import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String title;
  const TextTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Color(0xFF094067)));
  }
}
