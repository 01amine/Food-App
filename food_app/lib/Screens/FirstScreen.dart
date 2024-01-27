import 'package:flutter/material.dart';
import 'package:food_app/Screens/homePage.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/chefPic.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              'Food',
              style: GoogleFonts.aDLaMDisplay(
                  color: Colors.white,
                  fontSize: 50,
                  backgroundColor: Colors.white12),
            ),
            Text(
              'Recipes',
              style: GoogleFonts.aDLaMDisplay(
                  color: Colors.white,
                  fontSize: 50,
                  backgroundColor: Colors.white12),
            ),
            Text(
              'Easy To Make Food',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 25,
                  backgroundColor: Colors.white12),
            ),
            const SizedBox(
              height: 150,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
