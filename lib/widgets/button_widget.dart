import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final Function()? onchange;
  const ButtonWidget({
    super.key,
    required this.title,
    required this.buttonColor,
    required this.onchange,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(buttonColor),
          minimumSize: const MaterialStatePropertyAll(Size(0, 60)),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        ),
        onPressed: onchange,
        child: Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)));
  }
}
