import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const SizedBox(height: 25),
          
          // restaurant name
          Text("SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white
              ),
          ),

          const SizedBox(height: 25,),
          
          // image icon
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('lib/images/salmon_eggs.png'),
          ),
          
          // title
            Text("THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: Colors.white
              ),
            ),

            const SizedBox(height: 10,),

          // subtitle
            Text("Feel the taste of the most popular Japanese food from anywhere and anytime",
            style: TextStyle(
              color: Colors.grey[300],
              height: 2,
            ),),

            const SizedBox(height: 25,),

          // get started button
            MyButton(text: "Get Started",
            onTap: () {
              // go to menu page
              Navigator.pushNamed(context, '/menupage');
            },
            )
            
        ],),
      ),
    );
  }
}