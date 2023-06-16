import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mohtashim_election/screens/login_pg.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
          // height: height,
          // // width: double.infinity,
          // width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/images/greet.jpg',
            ),
            fit: BoxFit.cover,
          )),
          // ignore: prefer_const_constructors

          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.08,
                    // bottom: ,
                    left: width * 0.02,
                    // right: ,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Welcome!',
                          style: TextStyle(
                            // background: Paint()..color = Colors.white,
                            // color: Color(0xFF221f64),
                            color: Colors.white,
                            fontSize: width * 0.16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.2,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                            ".Get started with Election app,where\n technology meets simplicity",
                            style: TextStyle(
                                color: Colors.white, fontSize: width * 0.04)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.45,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(colors: [
                            Color(0xff1D2671),
                            Color(0xffC33764),
                          ])),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => login_screen()));
                        },
                        child: Text(
                          "Let's Go",
                          style: TextStyle(fontSize: width * 0.05, shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.9),
                                offset: Offset(05, 2),
                                blurRadius: 05),
                          ]),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)

                                // borderRadius: BorderRadius.only(
                                //     topLeft: Radius.circular(25),
                                //     bottomRight: Radius.circular(25)),
                                ),
                            backgroundColor: Colors.transparent,
                            // backgroundColor: Color(0xFFffd004),
                            // backgroundColor: Col
                            fixedSize: Size(width * 0.50, height * 0.075),
                            maximumSize: Size(width * 0.50, height * 0.075)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
              ],
            ),
          )),
    );
  }
}
