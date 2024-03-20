import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:startupeducation/screens/homescreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FF),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    width: 828,
                    height: 468,
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    'assets/images/workspace.jpeg',
                    colorBlendMode: BlendMode.colorBurn,
                    color: Color.fromARGB(147, 35, 38, 39),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 25,
                  child: GestureDetector(
                    onTap: () {
                       Navigator.of(context).push(createRoute());
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Positioned(
                  top: 60,
                  left: 70,
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                  top: 133,
                  left: 88,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(140),
                    child: Image.asset(
                      'assets/images/avatar.gif',
                      width: 232,
                      height: 232,
                    ),
                  ),
                ),
                const Positioned(
                  top: 375,
                  left: 120,
                  child: Text(
                    "Akash Solanki",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Positioned(
                  top: 408,
                  left: 138,
                  child: Text(
                    "@antivirusakash",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF707A8D),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Positioned(
                  top: 450,
                  child: Container(
                    width: 828,
                    height: 1,
                    color: const Color(0xFFDEE8FB),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      'Completed Courses',
                      style: TextStyle(
                        color: Color(0xFF2A3447),
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),
                    SizedBox(
                      width: 137,
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Color(0xFFFF5050),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  Container(
                    width: 261,
                    height: 353,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(-0.20, -0.98),
                        end: Alignment(0.2, 0.98),
                        colors: [Color(0xFF7CA4E8), Color(0xFF517CCD)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x336392E8),
                          blurRadius: 16,
                          offset: Offset(0, 8),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x336190E8),
                          blurRadius: 20,
                          offset: Offset(0, 12),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              'assets/images/play.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 15,
                            left: 22,
                            child: Container(
                              width: 250,
                              height: 280,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/billy.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )),
                        const Positioned(
                          top: 260,
                          left: 16,
                          child: Text(
                            'Growing Startup without\nSales Team',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 316,
                          left: 16,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/ellipse_2.png',
                                width: 28,
                                height: 28,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Kunal Shah',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    width: 261,
                    height: 353,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, 1.00),
                        end: Alignment(0, -1),
                        colors: [Color(0xFF605780), Color(0xFF909AB8)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x33676088),
                          blurRadius: 20,
                          offset: Offset(0, 12),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x33676088),
                          blurRadius: 16,
                          offset: Offset(0, 8),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              'assets/images/play.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            left: 10,
                            child: Container(
                              width: 250,
                              height: 250,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/piggy.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )),
                        const Positioned(
                          top: 260,
                          left: 16,
                          child: Text(
                            'Find Powerful Tips for\nWealth & Success',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 316,
                          left: 16,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/ellipse_2.png',
                                width: 28,
                                height: 28,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Kunal Shah',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 25,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
