import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mohtashim_election/screens/VoteForGeneralSec.dart';
import 'package:mohtashim_election/screens/VoteForMayor.dart';
import 'package:mohtashim_election/screens/VoteForPresident.dart';
import 'package:mohtashim_election/screens/home.dart';
import 'package:mohtashim_election/screens/voteForVisePresident.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class votingScreen extends StatefulWidget {
  const votingScreen({super.key});

  @override
  State<votingScreen> createState() => _votingScreenState();
}

class _votingScreenState extends State<votingScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color.fromARGB(255, 240, 244, 247),

        // color: Color.fromARGB(255, 240, 244, 247),

        body: Padding(
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

              ListTile(
                autofocus: true,
                title: Text('E-Voting',
                    style: TextStyle(
                        fontSize: width * 0.07, fontWeight: FontWeight.bold)),
                subtitle: Text(
                  'Muslim Marwari Silawat Jamaat Election',
                  style: TextStyle(
                      fontSize: width * 0.04, fontWeight: FontWeight.bold),
                ),
                trailing: Image.asset('assets/images/vote.png'),
              ),

              SizedBox(height: height * 0.06),

              // Container(
              //   decoration: BoxDecoration(
              //     boxShadow: [
              // BoxShadow(
              //   color: Colors.grey.withOpacity(0.1),
              //   offset: Offset(2.0, 2.0),
              //   blurRadius: 3.0,
              // ),
              //     ],
              //   ),
              //   child: ListTile(
              //     title: Text('My List Tile'),
              //     subtitle: Text('With shadow and curved sides'),
              //   ),
              // ),
              SizedBox(
                height: height * 0.015,
              ),

              Container(
                height: height * 0.65,
                child: ListView(
                  padding: EdgeInsets.all(8.0),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffC33764).withOpacity(0.8),

                        borderRadius: BorderRadius.circular(20),

                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff1D2671).withOpacity(0.8),
                            offset: Offset(0.0, 10.0),
                            blurRadius: 0.4,
                          ),
                        ],
                        // border: Border.all(color: Colors.indigoAccent),
                      ),
                      height: height * 0.2,
                      width: width * 1,
                      padding: EdgeInsets.only(
                        top: height * 0.03,
                        right: width * 0.03,
                        left: width * 0.03,
                        bottom: height * 0.03,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // SizedBox(
                                  //   height: height * 0.04,
                                  // ),
                                  Text(
                                    'Constituency',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: width * 0.035),
                                  ),
                                  SizedBox(height: height * 0.005),
                                  Text(
                                    'Karachi, Pakistan',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: width * 0.035),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/images/logo.jpg',
                                      // fit: BoxFit.cover,
                                      width: width * 0.15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Ready to cast your vote?',
                            style: TextStyle(
                                fontSize: width * 0.05,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VoteToPresident()));
                        },
                        contentPadding: EdgeInsets.all(30),
                        // leading: Icon(Icons.bar_chart_rounded),
                        leading: Icon(MdiIcons.stamper,
                            size: 48.0, color: Colors.white),

                        title: Text(
                          'Vote For President',
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                        subtitle: Text(
                          '"For Future President, public service is a calling. Before exercising your vote deep think for the right choice for a better future."',
                          style: TextStyle(
                              color: Colors.grey, fontSize: width * 0.03),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VoteForPresident()));
                        },
                        contentPadding: EdgeInsets.all(30),
                        // leading: Icon(
                        // Icons.how_to_vote_rounded,
                        leading: Icon(MdiIcons.stamper,
                            size: 48.0, color: Colors.white),

                        // leading: Icon(MdiIcons.voteOutline,
                        // size: 48.0, color: Colors.black),

                        title: Text(
                          'Vote For Vise President',
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                        subtitle: Text(
                            '"For Future Vise President, public service is a calling Before exercising your vote deep think for the right choice for a better future."',
                            style: TextStyle(
                                color: Colors.grey, fontSize: width * 0.03)),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => votefor_mayor()));
                        },
                        contentPadding: EdgeInsets.all(30),
                        // leading: Icon(Icons.bar_chart_rounded),
                        // leading: Image.asset('images/animatedface.jpg'),
                        leading: Icon(MdiIcons.stamper,
                            size: 48.0, color: Colors.white),

                        title: Text(
                          'Vote For Mayor',
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                        subtitle: Text(
                            '"For Future Mayor, public service is a calling Before exercising your vote deep think for the right choice for a better future."',
                            style: TextStyle(
                                color: Colors.grey, fontSize: width * 0.03)),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => votefor_general_sec()));
                        },
                        contentPadding: EdgeInsets.all(30),
                        // leading: Icon(Icons.abc),
                        // leading: Icon(Icons.how_to_vote_rounded,

                        leading: Icon(MdiIcons.stamper,
                            size: 48.0, color: Colors.white),

                        title: Text(
                          'Vote For General Seceretary',
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                        subtitle: Text(
                            '"For Future General Seceretary, public service is a calling Before exercising your vote deep think for the right choice for a better future."',
                            style: TextStyle(
                                color: Colors.grey, fontSize: width * 0.03)),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
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
