import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:startupeducation/screens/homescreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double cloud1Position = 0.0; // Position of the first cloud
  double cloud2Position = 0.0; // Position of the second cloud

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 101, 101),
      body: Stack(
        children: [
          // Rocket image
          Positioned(
            top: 100, // Adjust this value as needed
            left: MediaQuery.of(context).size.width / 2 -
                187, // Center the rocket horizontally
            child: Image.asset('assets/images/rocket.png', height: 430),
          ),
          // First cloud image
          Positioned(
            top: 190,
            left: 25, // Adjust the position as needed
            child: Image.asset('assets/images/cloud.png', height: 180),
          ),
          // Second cloud image
          Positioned(
            top: 84,
            right: 40, // Adjust the position as needed
            child: Image.asset('assets/images/mooncloud.png', height: 180),
          ),
          // Custom container below the screen
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: TopBulgingClipper(),
              child: Container(
                height: 340, // Adjust height as needed
                color:
                    const Color.fromARGB(255, 255, 255, 255), // Example color
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      width: 344,
                      child: Text(
                        'Launch and Grow your startup',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF2A3447),
                            fontSize: 36,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w800,
                            height: 1.2),
                      ),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    const SizedBox(
                      width: 344,
                      child: Text(
                        'The average company forecasts a growth   178% in revenues for their first year, 100% for second, and 71% for third.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF707A8D),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 2),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()),
                        );
                      },
                      child: Container(
                        width: 344,
                        height: 60,
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(0.07, -1.00),
                            end: Alignment(-0.07, 1),
                            colors: [Color(0xFFFF7070), Color(0xFFFF4F4F)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x4CFF7171),
                              blurRadius: 20,
                              offset: Offset(0, 12),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Color(0x4CFF6A6A),
                              blurRadius: 16,
                              offset: Offset(0, 8),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Text(
                            'Get Started',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0.11,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopBulgingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 30); // Start at the top left corner
    path.lineTo(size.width / 2 - 10,
        0); // Move to a point slightly left of the top center
    path.lineTo(
        size.width / 2, 0); // Move to the top center with a little height
    path.lineTo(size.width / 2 + 10,
        0); // Move to a point slightly right of the top center
    path.lineTo(size.width, 30); // Move to the top right corner
    path.lineTo(size.width, size.height); // Move to the bottom right corner
    path.lineTo(0, size.height); // Move to the bottom left corner
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
