import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mohtashim_election/screens/profile_screen.dart';
import 'package:mohtashim_election/screens/voteForVisePresident.dart';
import 'package:mohtashim_election/screens/voting.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   title: Text('Drawer Example'),
        // ),
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: <Widget>[
        //       DrawerHeader(
        //         child: Text('Drawer Header'),
        //         decoration: BoxDecoration(
        //           color: Colors.blue,
        //         ),
        //       ),
        //       ListTile(
        //         title: Text('Item 1'),
        //         onTap: () {
        //           // Navigate to the first screen
        //         },
        //       ),
        //       ListTile(
        //         title: Text('Item 2'),
        //         onTap: () {
        //           // Navigate to the second screen
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        // backgroundColor: Colors.transparent,
        // bottomNavigationBar: BottomNavigationBar(
        //   // type: BottomNavigationBarType.fixed,
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.other_houses),
        //       label: 'home',
        //       backgroundColor: Colors.indigo,
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.flag_circle_outlined),
        //       label: 'map',
        //       // backgroundColor: Colors.blue
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.line_style),
        //       label: 'news',
        //       // backgroundColor: Colors.indigo
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person_outline),
        //       label: 'profile',
        //       // backgroundColor: Colors.tealAccent
        //     ),
        //   ],
        // ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Explore',
                        style: TextStyle(
                            fontSize: width * 0.08,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                    child: TextField(
                      style: TextStyle(fontSize: width * 0.04),
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(
                          color: Colors.black,
                          Icons.search,
                          size: width * 0.05,
                        ),
                        hintStyle: TextStyle(
                            color: Colors.black, fontSize: width * 0.05),
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => home()));
                        },
                        child: Text(
                          'All',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => votingScreen()));
                        },
                        child: Text(
                          'E-Vote',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => VoteForPresident())));
                        },
                        child: Text(
                          'Leaders',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'News',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Results',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.65,
                child: GridView(
                  padding: EdgeInsets.only(
                      top: height * 0.02,
                      bottom: height * 0.02,
                      left: width * 0.02,
                      right: width * 0.02),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    // childAspectRatio: 5 / 4,
                  ),
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => votingScreen()));
                      },
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '   Cast\nYour Vote',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.06,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                      color: Colors.black,
                                      offset: Offset(08, 05),
                                      blurRadius: 08),
                                ]),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xff1D2671),
                                  Color(0xffC33764),
                                ])),
                      ),
                    ),
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(15),
                    //   child: Stack(fit: StackFit.expand, children: [
                    //     Container(
                    //       decoration: BoxDecoration(color: Colors.black),
                    //       child: Image.asset('images/Presi.jpg',
                    //           fit: BoxFit.cover),
                    //     ),
                    //     Padding(
                    //       padding: EdgeInsets.only(
                    //           left: width * 0.04, bottom: height * 0.03),
                    //       child: Align(
                    //         alignment: Alignment.bottomLeft,
                    //         child: Text(
                    //           softWrap: false,
                    //           'Presidential\nElection',
                    //           style: TextStyle(
                    //               background: Paint()
                    //                 ..color = Colors.black.withOpacity(0.5),
                    //               color: Colors.white,
                    //               // fontWeight: FontWeight.bold,
                    //               fontSize: width * 0.05),
                    //         ),
                    //       ),
                    //     ),
                    //   ]),
                    // ),
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(12),
                    //   child: Stack(
                    //     fit: StackFit.expand,
                    //     children: [
                    //       Container(
                    //         color: Colors.blue,
                    //         child: Image.asset('images/karachi.jpg',
                    //             height: height * 0.5, fit: BoxFit.cover),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: Align(
                    //           alignment: Alignment.center,
                    //           child: Text(
                    //             ' Election ',
                    //             style: TextStyle(
                    //                 background: Paint()
                    //                   ..color = Colors.black.withOpacity(0.8),
                    //                 // fontWeight: FontWeight.bold,
                    //                 fontSize: width * 0.06,
                    //                 color: Colors.white,
                    //                 shadows: [
                    //                   Shadow(
                    //                       color: Colors.black,
                    //                       offset: Offset(00, 12),
                    //                       blurRadius: 15),
                    //                 ]),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => profileScreen()),
                        // );
                      },
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Election\n2018  ',
                            style: TextStyle(
                                // background: Paint()
                                // ..color = Colors.black.withOpacity(0.8),
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.06,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                      color: Colors.black,
                                      offset: Offset(08, 05),
                                      blurRadius: 08),
                                ]),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.green
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xff1D2671),
                                Color(0xffC33764),
                              ]),
                        ),
                      ),
                    ),
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(12),
                    //   child: Stack(
                    //     fit: StackFit.expand,
                    //     children: [
                    //       Container(
                    //         // color: Colors.blue,
                    //         decoration: BoxDecoration(
                    //           color: Colors.blue,
                    //           border: Border.all(),
                    //         ),
                    //         child: Image.asset('images/logo.jpg',
                    //             height: height * 0.5, fit: BoxFit.cover),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: Align(
                    //           alignment: Alignment.center,
                    //           child: Text(
                    //             ' MMSJ ',
                    //             style: TextStyle(
                    //                 background: Paint()
                    //                   ..color = Colors.black.withOpacity(0.8),
                    //                 // fontWeight: FontWeight.bold,
                    //                 fontSize: width * 0.06,
                    //                 color: Colors.white,
                    //                 shadows: [
                    //                   Shadow(
                    //                       color: Colors.black,
                    //                       offset: Offset(00, 12),
                    //                       blurRadius: 15),
                    //                 ]),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Result',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.06,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                      color: Colors.black,
                                      offset: Offset(08, 05),
                                      blurRadius: 08),
                                ]),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xff1D2671),
                                  Color(0xffC33764),
                                ])),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => profileScreen()),
                        );
                      },
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.06,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                      color: Colors.black.withOpacity(0.9),
                                      offset: Offset(08, 05),
                                      blurRadius: 08),
                                ]),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xff1D2671),
                                  Color(0xffC33764),
                                ])),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'News &\nDebate',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.06,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                      color: Colors.black.withOpacity(0.9),
                                      offset: Offset(08, 05),
                                      blurRadius: 08),
                                ]),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xff1D2671),
                                  Color(0xffC33764),
                                ])),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
