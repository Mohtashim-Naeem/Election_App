import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mohtashim_election/screens/home.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String message = "";
  // String message2 = "";

  String enteredUsernme = "";
  String enteredPassword = "";

  void userAuthentication() {
    String userID = userController.text;
    String password = passwordController.text;

    bool condition = userID.contains("@") &&
        userID.endsWith(".com") &&
        userID.length >= 6 &&
        !userID.contains(" ") &&
        password.length >= 8;
    if (condition) {
      // message = "That's Correct";

      message = "Thanks for sign-In we'll remember you next time!";
    } else {
      // message = "that's In-correct";
      message = "Please, Enter Correct Email or Password!";
    }
    setState(() {});
  }

  Future<void> executeDelayedAction() async {
    // Delay the action for 3 seconds

    Navigator.push(context, MaterialPageRoute(builder: ((context) => home())));

    await Future.delayed(Duration(seconds: 3));
    Text(
      softWrap: true,
      message,
      style: TextStyle(
        fontSize: 18.0,
        // fontWeight: FontWeight.bold,
      ),
    );
// Navigator.push(context, MaterialPageRoute(builder: ((context) => home())))
    // Perform your desired action here
    // print('Delayed action executed!');
    // You can call functions, update UI, or perform any other action.
  }

  // void passAuth() {
  //   String password = passwordController.text;
  //   // if (enteredPassword.length >= 8 && enteredPassword.isNotEmpty) {
  //   //   message2 = "Thanks for sign-In we'll remember you next time!";
  //   // } else {
  //   //   message2 = "Please, Enter Correct Email or Password!";
  //   // }
  //   if (password.length >= 8 && password.isNotEmpty) {
  //     message2 = "That's Correct";
  //     // message2 = "Thanks for sign-In we'll remember you next time!";
  //   } else {
  //     message2 = "That's In-Correct";

  //     // message2 = "Please, Enter Correct Email or Password!";
  //   }
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: width * 0.01,
          left: width * 0.05,
          right: width * 0.05,
          bottom: width * 0.05,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    // color: Colors.indigo,
                    // border:
                    // Border.all(width: width * 0.006,
                    // color: Colors.black),
                    borderRadius: BorderRadius.circular(25)),
                // padding: EdgeInsets.all(4),
                // color: Color.fromARGB(255, 10, 4, 143),
                // color: Colors.blue,
                child: Image.asset('assets/images/logo.jpg', fit: BoxFit.cover),
              ),

              SizedBox(
                height: height * 0.03,
              ),
              Text(
                'Login ',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              // Row(
              //   children: [
              //     Text(
              //       'CNIC No.',
              //       style: TextStyle(fontSize: width * 0.045),
              //     )
              //   ],
              // ),
              SizedBox(
                height: 0.40,
              ),
              TextField(
                controller: userController,
                // onEditingComplete: userAuthentication,
                style: TextStyle(fontSize: width * 0.04),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: height * 0.009,
                    horizontal: height * 0.015,
                  ),
                  label: Text(
                    'Username',
                  ),
                  labelStyle: TextStyle(
                    fontSize: width * 0.04,
                    color: Color.fromRGBO(89, 130, 130, 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width * 0.02),
                      borderSide: BorderSide(
                        width: 3,
                        color: Color(0xffC33764),
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width * 0.02),
                      borderSide: BorderSide(
                        width: 3,
                        // color: Color(0xffC33764),
                        color: Color(0xff1D2671),

                        // color: Color.fromRGBO(192, 213, 210, 1),
                        // color: Color.fromRGBO(192, 213, 210, 1),
                      )),
                ),
              ),
              // Text(
              //   message,
              //   style: TextStyle(fontSize: 20),
              // ),
              SizedBox(
                height: height * 0.03,
              ),
              TextField(
// onSubmitted: passAuth,
                // onEditingComplete: passAuth,
                // onTap: passAuth,
                onChanged: (val) {
                  enteredPassword = val;
                },
                controller: passwordController,
                style: TextStyle(fontSize: width * 0.04),
                // keyboardType: TextInputType.,

                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.009,
                    horizontal: MediaQuery.of(context).size.height * 0.015,
                  ),
                  label: Text('Password'),
                  labelStyle: TextStyle(
                    fontSize: width * 0.04,
                    color: Color.fromRGBO(89, 130, 130, 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width * 0.02),
                      borderSide: BorderSide(
                        width: 3,
                        // color: Color(0xff1D2671),
                        color: Color(0xffC33764),
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width * 0.02),
                      borderSide: BorderSide(
                        width: 3,

                        // color: Color(0xffC33764),
                        color: Color(0xff1D2671),
                      )),
                ),
              ),
              // Text(
              //   message2,
              //   style: TextStyle(fontSize: 20),
              // ),

              SizedBox(height: height * 0.15),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(colors: [
                      Color(0xff1D2671),
                      Color(0xffC33764),
                    ])),
                child: ElevatedButton(
                  onPressed: userAuthentication,
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: width * 0.05, shadows: [
                      Shadow(
                          color: Colors.black.withOpacity(0.9),
                          offset: Offset(05, 2),
                          blurRadius: 03),
                    ]),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      backgroundColor: Colors.transparent,
                      fixedSize: Size(width * 0.50, height * 0.075),
                      maximumSize: Size(width * 0.50, height * 0.075)),
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                      onPressed: executeDelayedAction, child: Text('Next'))), 
              // Text(
              //   softWrap: true,
              //   message,
              //   style: TextStyle(
              //     fontSize: 18.0,
              //     // fontWeight: FontWeight.bold,
              //   ),
              // ),
              SizedBox(
                height: height * 0.025,
              ),
              Text(
                '© 2022-2024',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.03,
                    color: Theme.of(context).hintColor),
              ),
              Text(
                'MMSJ',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.03,
                    color: Theme.of(context).hintColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
