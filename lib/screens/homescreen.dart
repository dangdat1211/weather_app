import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 1.2* kToolbarHeight, 30, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [        
              Align(
                alignment: AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 250,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 250,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 270,
                  width: 600,
                  decoration: const BoxDecoration(
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.00),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Address here',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      'Good Morning',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25
                      ),
                    ),
                    Image.asset('assets/2.png'),
                    const Center(
                      child: Text(
                        '21℃',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'ThunderStorm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Friday 16 . 09.14 AM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                    ),

                    const SizedBox(height: 40,),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/11.png', scale: 8,),
                            const SizedBox(height: 3,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunrise', 
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100
                                  ),
                                ),
                                Text(
                                  '5:30 AM', 
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('assets/12.png', scale: 8,),
                            const SizedBox(height: 3,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunset', 
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100
                                  ),
                                ),
                                Text(
                                  '5:30 PM', 
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        
                      ],
                    ),
                    const Padding(
                      padding:  EdgeInsets.symmetric(vertical: 5.0),
                      child: Divider(color: Colors.grey,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/13.png', scale: 8,),
                            const SizedBox(height: 3,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temp Max', 
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100
                                  ),
                                ),
                                Text(
                                  '21℃', 
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('assets/14.png', scale: 8,),
                            const SizedBox(height: 3,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temp Min', 
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100
                                  ),
                                ),
                                Text(
                                  '21℃', 
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}