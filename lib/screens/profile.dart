import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FF),
      body: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Opacity(
                    opacity: 1.0,
                    child: Container(
                      width: 414,
                      height: 256,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0)),
                      child: Container(
                        width: 414,
                        height: 256,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/workspace.jpeg',
                            ),
                            
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 50,
                    left: 15,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  const Positioned(
                    top: 50,
                    left: 50,
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  // Positioned(
                  //   top: 100,
                  //   left: 100,
                  //   child: Container(
                  //     width: 232,
                  //     height: 232,
                  //     decoration: ShapeDecoration(
                  //       image: const DecorationImage(
                  //         image: AssetImage('assets/images/avatar.gif'),
                  //         fit: BoxFit.fill,
                  //       ),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(200),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              // Container(
              //   height: 100,
              //   width: 600,
              //   color: Colors.black,
              // )
            ],
          ),
        ],
      ),
    );
  }
}
