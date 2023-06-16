import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class votefor_general_sec extends StatefulWidget {
  const votefor_general_sec({super.key});

  @override
  State<votefor_general_sec> createState() => _votefor_general_secState();
}

class _votefor_general_secState extends State<votefor_general_sec> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 240, 244, 247),

      // color: Color.fromARGB(255, 240, 244, 247),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      // MaterialPageRoute(builder: (context) => home()),
                    );
                  },
                  icon: Icon(
                    Icons.navigate_before_outlined,
                    size: 40.0,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    // begin: Alignment.center,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffC33764),
                      Color(0xff1D2671),
                    ],
                  ),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(30),

                  autofocus: true,
                  title: Text('E-Voting',
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: width * 0.07,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    'Muslim Marwari Silawat Jamaat Election',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                  // trailing: Image.asset('assets/images/vote.png')
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/logo.jpg',
                      // fit: BoxFit.cover,
                      // width: width * 0.15,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: ListTile(
                  title: Text(
                    'Vote For General seceretary',
                    style: TextStyle(
                        // color: Colors.white,
                        fontSize: width * 0.07,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      '"Your vote is your voice. Make it count and choose the leader who will best serve the needs of the nation and its people."'),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),

              // Align(
              //   alignment: Alignment.center,
              //   child: Text(
              //     'Vote For President',
              //     style: TextStyle(
              //         color: Colors.white,
              //         // decoration: TextDecoration.lineThrough,
              //         shadows: [
              //           BoxShadow(
              //             offset: Offset(00, 20),
              //             blurRadius: 04,
              //           )
              //         ],
              //         background: Paint()..color = Colors.black.withOpacity(0.6),
              //         fontWeight: FontWeight.bold,
              //         fontSize: width * 0.07),
              //   ),
              // ),

              Container(
                height: height * 0.469,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    childAspectRatio: 3 / 4,
                  ),
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Stack(fit: StackFit.expand, children: [
                        Container(
                          // color: Colors.black,

                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Color(0xff1D2671),
                            Color(0xffC33764),
                          ])),

                          child: Opacity(
                            opacity: 0.5,
                            child: Image.asset('assets/images/face6.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment.center,
                        //   child: Text(
                        //     softWrap: false,
                        //     'Vote For President',
                        //     style: TextStyle(
                        //         background: Paint()
                        //           ..color = Colors.black.withOpacity(0.3),
                        //         fontSize: width * 0.05,
                        //         // fontWeight: FontWeight.bold,
                        //         color: Colors.white),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(colors: [
                                    Color(0xff1D2671),
                                    Color(0xffC33764),
                                  ])),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Vote",
                                  style: TextStyle(fontSize: width * 0.05),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(width * 0.50, height * 0.075),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    ClipRRect(
                      // borderRadius: BorderRadius.circular(15),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Stack(fit: StackFit.expand, children: [
                        Container(
                          // color: Colors.black,

                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Color(0xff1D2671),
                            Color(0xffC33764),
                          ])),

                          child: Opacity(
                            opacity: 0.5,
                            child: Image.asset('assets/images/animatedface.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment.center,
                        //   child: Text(
                        //     softWrap: false,
                        //     'Vote For President',
                        //     style: TextStyle(
                        //         background: Paint()
                        //           ..color = Colors.black.withOpacity(0.3),
                        //         fontSize: width * 0.05,
                        //         // fontWeight: FontWeight.bold,
                        //         color: Colors.white),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(colors: [
                                    Color(0xff1D2671),
                                    Color(0xffC33764),
                                  ])),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Vote",
                                  style: TextStyle(fontSize: width * 0.05),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(width * 0.50, height * 0.075),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    ClipRRect(
                      // borderRadius: BorderRadius.circular(15),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Stack(fit: StackFit.expand, children: [
                        Container(
                          // color: Colors.black,

                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Color(0xff1D2671),
                            Color(0xffC33764),
                          ])),

                          child: Opacity(
                            alwaysIncludeSemantics: true,
                            opacity: 0.5,
                            child: Image.asset('assets/images/animated2.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment.center,
                        //   child: Text(
                        //     softWrap: false,
                        //     'Vote For President',
                        //     style: TextStyle(
                        //         background: Paint()
                        //           ..color = Colors.black.withOpacity(0.3),
                        //         fontSize: width * 0.05,
                        //         // fontWeight: FontWeight.bold,
                        //         color: Colors.white),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(colors: [
                                    Color(0xff1D2671),
                                    Color(0xffC33764),
                                  ])),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Vote",
                                  style: TextStyle(fontSize: width * 0.05),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(width * 0.50, height * 0.075),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
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
