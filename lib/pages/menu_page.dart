import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/components/button.dart';
import 'package:restaurant_app/themes/colors.dart';

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
        body: Column(
          children: [
            // promo banner
            Container(
              decoration: BoxDecoration(color: primaryColor),
              child: Row(
                children: [

                  Column(
                    children: [
                      // promo message
                      Text("get 10% promo now!"),

                      // redeem button
                      MyButton(
                          text: "Redeem",
                          onTap: (){

                          })
                    ],
                  ),

                 
                  
                ],
              ),
            )

            // search bar

            // menu list

            // popular food

          ],
        ),
      ),
    );
  }
}
