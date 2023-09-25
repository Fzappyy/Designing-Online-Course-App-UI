// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:online_course_app/pages/course_detail.dart';
import 'package:online_course_app/pages/vertical_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF29274F),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Online',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Master Class',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22.0,
            ),
            SizedBox(
              height: 350.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 250,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        gradient: LinearGradient(
                            colors: [Color(0xFF9288E4), Color(0xFF534EA7)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 11,
                              top: 15,
                              child: Container(
                                padding: EdgeInsets.all(10.0),
                                height: 39,
                                decoration: BoxDecoration(
                                    color: Color(0xFFAFA8EE),
                                    borderRadius: BorderRadius.circular(36)),
                                child: Text(
                                  'Recommended',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              )),
                          Positioned(
                              top: 80,
                              left: 14,
                              child: Text(
                                'UI/UX DESIGNER',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                              top: 111,
                              left: 14,
                              child: Text(
                                'BEGINNER',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Image.asset(
                                'assets/images/img_saly10.png',
                                scale: 2,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/course_detail');
                      },
                      child: Container(
                        width: 250,
                        height: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          gradient: LinearGradient(
                              colors: [Color(0xFFF4C465), Color(0xFFC63956)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 11,
                                top: 15,
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  height: 39,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF4C67A),
                                      borderRadius: BorderRadius.circular(36)),
                                  child: Text(
                                    'NEW CLASS',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                )),
                            Positioned(
                                top: 80,
                                left: 14,
                                child: Text(
                                  'GRAPHIC DESIGN',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                            Positioned(
                                top: 111,
                                left: 14,
                                child: Text(
                                  'MASTER',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(
                                  'assets/images/img_saly36.png',
                                  scale: 2,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Free Online Class',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'From over 80 lectures',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9C9A9A)),
                  ),
                ],
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MyVerticalList(
                    courseDuration: '8 Hours',
                    courseTitle: 'Flutter Developer',
                    courseImage: 'assets/images/img_saly24.png',
                    courseRating: 'assets/images/stars.png',
                  );
                }),
            ListView.builder(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MyVerticalList(
                    courseDuration: '6 Hours',
                    courseTitle: 'Full Stack Javascript',
                    courseImage: 'assets/images/img_saly13.png',
                    courseRating: 'assets/images/stars.png',
                  );
                }),
          ],
        ),
      ),
    );
  }
}
