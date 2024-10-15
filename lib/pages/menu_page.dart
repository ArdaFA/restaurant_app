import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/components/button.dart';
import 'package:restaurant_app/models/food.dart';
import 'package:restaurant_app/themes/colors.dart';

import '../components/food_tile.dart';

class MenuPage extends StatelessWidget {
    MenuPage({Key? key}) : super(key: key);
  
  // food list (menu)
  List foodMenu = [
    // Salmon sushi 
    Food(name: "Salmon Sushi", price: "17.50", imagePath: 'lib/images/salmon.png', rating: "4.8"),
    // tuna
    Food(name: "Tuna", price: "14.50", imagePath: 'lib/images/tuna.png', rating: "4.3"),
  ];

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
              // fontFamily: 'Japanese', // The family name from pubspec.yaml
              fontSize: 28,
              color: Colors.grey[900],
            ),
              ),
        ),
        body: Column(
          children: [
            // promo banner
            Container(
              decoration: BoxDecoration(color: primaryColor, borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // promo message
                      Text(
                        "get 10% promo now!",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20,
                          color: Colors.white70,
                        )
                        ),

                      // some space between them
                      SizedBox(height: 20),
                      // redeem button
                      MyButton(
                          text: "Redeem",
                          onTap: (){

                          })
                    ],
                  ),

                  // image 
                  Image.asset('lib/images/many_sushi.png', height: 100)
                ],
              ),
            ),

            const SizedBox(height: 25,),

            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white70,
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white70,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),
            
            // menu list
            const Text("Food Menu",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
              fontSize: 18
            ),),
            
            const SizedBox(height: 10),

            // to fill up the rest of the space, use expanded widget
            Expanded(
              child: ListView.builder(
                itemCount: foodMenu.length,
                itemBuilder: (context, index) => FoodTile(food: foodMenu[index],),
              ),
            ),

            // popular food

          ],
        ),
      ),
    );
  }
}
