import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/food.dart';

class FoodTile extends StatelessWidget {
  // for each food tile we need to know what the food is
  final Food food;
  const FoodTile({
    super.key,
    required this.food
});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(

        children: [// image
          Image.asset(food.imagePath,
          height: 140,),
          // text
          Text(food.name,
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 20
          ),),

          // price + rating
          Row(
            children: [
              Text('\$' + food.price),

              //rating
              Icon(Icons.star),
              Text(food.rating),
            ],
          )
        ]

      ),
    );
  }
}
