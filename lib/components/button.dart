import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({Key? key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(212, 135, 81, 77),
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text
            Text(text, style:
            const TextStyle(
                color: Colors.white
            ),
            ),

            const SizedBox(width: 10,),

            // Icon
            const Icon(Icons.arrow_forward, color: Colors.white,),
          ],
        ),
      ),
    );
  }
}
