import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mohtashim_election/screens/home.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // begin: Alignment.center,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              // Color.fromARGB(255, 18, 46, 152),
              // Color.fromARGB(255, 14, 37, 119),
              // Color.fromARGB(255, 22, 114, 225),
              // Color.fromARGB(255, 20, 79, 189),
              Color(0xff1D2671),
              Color(0xffC33764),
            ],
          ),
        ),
        child: Scaffold(
          // body: Center(
          //   child: Text('Hello, Drawer'),
          // ),
          backgroundColor: Colors.transparent,
          //  : LinearGradient(
          //                     colors: [
          //                       Color.fromARGB(255, 22, 114, 225),
          //                       Color.fromARGB(255, 20, 79, 189),
          //                       Color.fromARGB(255, 18, 46, 152),
          //                       Color.fromARGB(255, 14, 37, 119),
          //                     ],
          //                   ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => home()),
                        );
                      },
                      icon: Icon(
                        Icons.navigate_before_outlined,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.025,
                          // fontWeight: FontWeight.w800
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.85,
                child: SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(
                      height: height * 0.025,
                    ),

                    // image from network
                    CircleAvatar(
                      radius: height * 0.10,
                      // backgroundImage: NetworkImage(
                      //     'https://as2.ftcdn.net/v2/jpg/02/20/60/97/1000_F_220609741_GmzybFadOhexCoNYkrGSpyXc4Smhr4Tx.jpg'),
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),

                    SizedBox(
                      height: height * 0.02,
                    ),

                    Text(
                      'Mohtashim',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.045,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'VID:CA1234569',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.030,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: width * 0.01),
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 245, 0, 74),
                          radius: width * 0.015,
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.04),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,

                    //     // border: Border.all(
                    //     // // Colors.black
                    //     // ),

                    //     // color: Colors.black,
                    //     borderRadius: BorderRadius.circular(30),
                    //   ),
                    //   height: height * 0.25,
                    //   width: width * 1,
                    //   padding: EdgeInsets.only(
                    //     top: height * 0.03,
                    //     right: width * 0.03,
                    //     left: width * 0.03,
                    //     bottom: height * 0.03,
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Align(
                    //           alignment: Alignment.topLeft,
                    //           child: Column(
                    //             children: [
                    //               // SizedBox(
                    //               //   height: height * 0.04,
                    //               // ),
                    //               Text(
                    //                 'Constituency',
                    //                 style: TextStyle(
                    //                     color: Colors.indigo,
                    //                     fontSize: width * 0.035),
                    //               ),
                    //               SizedBox(height: height * 0.005),
                    //               Text(
                    //                 'Karachi, Pakistan',
                    //                 style: TextStyle(
                    //                     color: Colors.blue,
                    //                     fontSize: width * 0.035),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //         Align(
                    //           alignment: Alignment.topRight,
                    //           child: Row(
                    //             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               Image.asset(
                    //                 'images/flag.webp',
                    //                 fit: BoxFit.cover,
                    //                 width: width * 0.15,
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),

                    SizedBox(
                      height: height * 0.05,
                    ),
//            ______________________________________
                    Container(
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                          // border: Border.all(color: Colors.black),
                          // gradient: LinearGradient(colors: [
                          // Color.fromARGB(255, 22, 114, 225),
                          // Color.fromARGB(255, 20, 79, 189),
                          // Color.fromARGB(255, 18, 46, 152),
                          // Color.fromARGB(255, 14, 37, 119),
                          // ]),
                          // color: Colors.purple,
                          // borderRadius: BorderRadius.circular(30),
                          ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(children: [
                          // SizedBox(
                          //   height: height * 0.03,
                          // ),
                          Row(
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.04,
                                  // fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          TextField(
                            onTap: () {},
                            style: TextStyle(fontSize: width * 0.04),
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              focusColor: Colors.black,

                              // hoverColor: Colors.black,
                              hintStyle: TextStyle(
                                  // color: Theme.of(context).hintColor,
                                  color: Colors.black,
                                  fontSize: width * 0.04),
                              hintText: 'Mohtashim Naeem',
                            ),
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Row(children: [
                            Text('Date Of Birth',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.04,
                                  // fontWeight: FontWeight.bold
                                )),
                            SizedBox(
                              width: width * 0.3,
                            ),
                            Text(
                              'Gender',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.04,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: new TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      focusColor: Colors.black,
                                      border: InputBorder.none,
                                      hintText: '26 April 2004',
                                      hintStyle: TextStyle(
                                          // color: Theme.of(context).hintColor,
                                          color: Colors.black,
                                          fontSize: width * 0.04)),
                                ),
                              ),
                              SizedBox(width: width * 0.05),
                              Flexible(
                                child: new TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        focusColor: Colors.black,
                                        border: InputBorder.none,
                                        hintText: 'Male',
                                        hintStyle: TextStyle(
                                            // color: Theme.of(context).hintColor,
                                            color: Colors.black,
                                            fontSize: width * 0.04))),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.05),
                          Row(children: [
                            Text('Qualification',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.04,
                                  // fontWeight: FontWeight.bold
                                )),
                            SizedBox(
                              width: width * 0.3,
                            ),
                            Text(
                              'Profession',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.04,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: new TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      focusColor: Colors.black,
                                      border: InputBorder.none,
                                      hintText: 'Graduation',
                                      hintStyle: TextStyle(
                                          // color: Theme.of(context).hintColor,
                                          color: Colors.black,
                                          fontSize: width * 0.04)),
                                ),
                              ),
                              SizedBox(width: width * 0.05),
                              Flexible(
                                child: new TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        focusColor: Colors.black,
                                        border: InputBorder.none,
                                        hintText: 'Engineer',
                                        hintStyle: TextStyle(
                                            // color: Theme.of(context).hintColor,
                                            color: Colors.black,
                                            fontSize: width * 0.04))),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.05),
                          Row(
                            children: [
                              Text(
                                'Nationality',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.04,
                                  // fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          TextField(
                            onTap: () {},
                            style: TextStyle(fontSize: width * 0.04),
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              filled: true,
                              focusColor: Colors.black,
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  // color: Theme.of(context).hintColor,
                                  color: Colors.black,
                                  fontSize: width * 0.04),
                              hintText: 'Pakistan',
                            ),
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Row(
                            children: [
                              Text(
                                'Contact No.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.04,
                                  // fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          TextField(
                            onTap: () {},
                            style: TextStyle(fontSize: width * 0.04),
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              filled: true,
                              focusColor: Colors.black,
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  // color: Theme.of(context).hintColor,
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: width * 0.04),
                              hintText: '+92 3362529872',
                            ),
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Row(
                            children: [
                              Text(
                                'Email Address',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.04,
                                  // fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          TextField(
                            onTap: () {},
                            style: TextStyle(fontSize: width * 0.04),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              focusColor: Colors.black,
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  // color: Theme.of(context).hintColor,
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: width * 0.04),
                              hintText: 'starkedward@xyz.com',
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Container(
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
                                        builder: (context) => home()));
                              },
                              child: Text(
                                "Submit",
                                style:
                                    TextStyle(fontSize: width * 0.05, shadows: [
                                  Shadow(
                                      color: Colors.black.withOpacity(0.9),
                                      offset: Offset(05, 05),
                                      blurRadius: 03),
                                ]),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  backgroundColor: Colors.transparent,
                                  fixedSize: Size(width * 0.50, height * 0.075),
                                  maximumSize:
                                      Size(width * 0.50, height * 0.075)),
                            ),
                          ),
                        ]),
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
