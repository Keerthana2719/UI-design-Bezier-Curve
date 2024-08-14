import 'package:flutter/material.dart';
import '../class/bezier.dart';
import '../class/bezier2.dart';

class Design1 extends StatefulWidget {
  const Design1({super.key});

  @override
  State<Design1> createState() => _Design1State();
}

class _Design1State extends State<Design1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // First curved container
            ClipPath(
              clipper: BezierClipper1(),
              child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height / 1.6,
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 230,
              right: 10,
              child: ClipOval(
                child: Container(
                  width: 90, // Adjust size of the bubble
                  height: 90, // Adjust size of the bubble
                  color: Colors.lightBlueAccent.withOpacity(0.7),
                ),
              ),
            ),
            Positioned(
              top: 180,
              right: 0,
              child: ClipOval(
                child: Container(
                  width: 80, // Adjust size of the bubble
                  height: 80, // Adjust size of the bubble
                  color: Colors.purple.withOpacity(0.3),
                ),
              ),
            ),
            // Second curved container stacked on top
            ClipPath(
              clipper: BezierClipper2(),
              child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height / 1.5,
                color: Colors.blueAccent.withOpacity(0.5),
              ),
            ),
            // Positioned text
            Positioned(
              top:
                  215, // Adjust this value to position the text within the curves
              right: 85, // Adjust this value to center the text horizontally
              child: Text(
                "Login",
                style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            // Image asset
            Image.asset(
              "assets/log.png",
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
            // Text fields and other elements
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 350),
                  Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: "bold",
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Enter your Email",
                      labelStyle: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: "bold",
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Enter your Password",
                      labelStyle: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.70),
                          borderRadius: BorderRadius.circular(25,)),
                        child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
