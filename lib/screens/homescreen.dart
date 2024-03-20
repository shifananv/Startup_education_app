import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:startupeducation/mentorcontainer.dart';
import 'package:startupeducation/screens/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FF),
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/menu.png'), // Your left image
        ),
        title: const Text(
          'Hi, Akash 👋',
          style: TextStyle(
            color: Color(0xFF2A3447),
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ), // Your title text
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: const Duration(
                        milliseconds: 650), // Adjust the duration as needed
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(1.0, 0.0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      );
                    },
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const ProfileScreen(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/avatar.gif',
                height: 50,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 3,
          ),
          const Row(
            children: [
              SizedBox(
                width: 18,
              ),
              SizedBox(
                width: 356,
                child: Text(
                  'Find your favorite startup course here',
                  style: TextStyle(
                    color: Color(0xFF2A3447),
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 9,
          ),
          Row(
            children: [
              const SizedBox(
                width: 18,
              ),
              Container(
                width: 325,
                height: 48,
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 237, 237, 237),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 48,
                height: 48,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.07, -1.00),
                    end: Alignment(-0.07, 1),
                    colors: [Color(0xFFFF7070), Color(0xFFFF4F4F)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x4CFF6A6A),
                      blurRadius: 16,
                      offset: Offset(0, 8),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Image.asset('assets/images/feathersliders.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          const Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Text(
                'My Courses',
                style: TextStyle(
                  color: Color(0xFF2A3447),
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0.09,
                ),
              ),
              SizedBox(
                width: 202,
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
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 18,
                ),
                Container(
                  width: 261,
                  height: 410,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.07, -1.00),
                      end: Alignment(-0.07, 1),
                      colors: [Color(0xFFFFAC70), Color(0xFFFF844F)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x4CFF7171),
                        blurRadius: 20,
                        offset: Offset(0, 12),
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Color(0x4CFF9F69),
                        blurRadius: 16,
                        offset: Offset(0, 8),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Image.asset('assets/images/play.png')],
                      ),
                      Image.asset('assets/images/avator.png'),
                      const SizedBox(
                        height: 3,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 33, bottom: 3),
                        child: Text(
                          'Finding Co-Founder in\nearly days',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 21,
                          ),
                          Image.asset('assets/images/ellipse_3.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Ankur Warikoo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  width: 261,
                  height: 410,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.00, 1.00),
                      end: Alignment(0, -1),
                      colors: [Color(0xFF02AAB0), Color(0xFF00CDAC)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3300CBAC),
                        blurRadius: 20,
                        offset: Offset(0, 12),
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Color(0x3300CCAC),
                        blurRadius: 16,
                        offset: Offset(0, 8),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Image.asset('assets/images/play.png')],
                      ),
                      Image.asset(
                        'assets/images/check.png',
                        height: 220,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 21, bottom: 3),
                        child: Text(
                          'Getting first seed funding checklist',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 21,
                          ),
                          Image.asset('assets/images/ellipse_3.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Ankur Warikoo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 29,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 162),
            child: Text(
              'Courses by Mentors',
              style: TextStyle(
                color: Color(0xFF2A3447),
                fontSize: 23,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w900,
                height: 0.09,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 18,
                ),
                Container(
                  width: 261,
                  height: 72,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(-0.50, 0.86),
                      end: Alignment(0.5, -0.86),
                      colors: [
                        Color(0xFF0052D4),
                        Color(0xFF4364F7),
                        Color(0xFF6FB1FC)
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x33001A6F),
                        blurRadius: 16,
                        offset: Offset(4, 8),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 14,
                      ),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/ellipse_3.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 11,
                          ),
                          Text(
                            'Ankur Warikoo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Founder Nearby | Mentor',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  width: 261,
                  height: 72,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(-0.50, 0.86),
                      end: Alignment(0.5, -0.86),
                      colors: [
                        Colors.black,
                        Color(0xFF2D2C2C),
                        Color(0xFF626262)
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x33353535),
                        blurRadius: 16,
                        offset: Offset(4, 8),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 14,
                      ),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/ellipse_2.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 11,
                          ),
                          Text(
                            'Kunal Shah',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Founder CRED',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
