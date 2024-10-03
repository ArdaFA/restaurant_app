import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        // Color
        backgroundColor: Colors.grey[300],

        // Appbar
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(
              Icons.menu_rounded,
              color: Colors.grey[900]
          ),
          title: Text(
                "ADANA SUSHI",
            style: TextStyle(
              fontFamily: 'Japanese', // The family name from pubspec.yaml
              fontSize: 28,
              color: Colors.grey[900],
            ),
              ),
        ),
      ),
    );
  }
}
