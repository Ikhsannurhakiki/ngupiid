import 'package:flutter/material.dart';
import 'package:ngupiid/asset/helper/colors.dart';
import 'package:ngupiid/ui/mainScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/asset/backg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              child: Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Login",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500)),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      TextField(
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                            filled: true,
                            fillColor: ColorsHelper.inputColor,
                            suffixIcon: Icon(
                              Icons.check_circle,
                              color: Colors.black,
                            ),
                            labelText: "Enter your email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                    color: Colors.black, width: 2.0)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors
                                    .lightGreen, // Change outline color when focused
                                width: 2.0,
                              ),
                            ),
                            hintText: "example@mail.com",
                          ),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      TextField(
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                            filled: true,
                            fillColor: ColorsHelper.inputColor,
                            suffixIcon: Icon(Icons.remove_red_eye_rounded,
                                color: Colors.black),
                            labelText: "Enter your password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                    color: Colors.black, width: 2.0)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors
                                    .lightGreen, // Change outline color when focused
                                width: 2.0,
                              ),
                            ),
                            hintText: "Enter your password",
                          ),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 50),
                      Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.from(
                                    alpha: 0x4D, red: 00, green: 00, blue: 00),
                                spreadRadius: 2, // Spread radius
                                blurRadius: 10, // Blur radius
                                offset: Offset(0, 4), // Shadow offset
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Mainscreen()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.infinity, 50),
                                backgroundColor: BrownPalette.baseBrown,
                              ),
                              child: Text("Login",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20)))),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      TextButton(
                          onPressed: () {
                            // Handle button press
                          },
                          child: Text(
                            "Forget Your Password?",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          )),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.08),
                      Container(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.01),
                          decoration: BoxDecoration(
                            color: ColorsHelper.buttonColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Column(children: [
                            Text(
                              "Need an account?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'lib/asset/twitter.png', // Replace with your image path
                                    width: MediaQuery.of(context).size.width *
                                        0.07,
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'lib/asset/twitter.png', // Replace with your image path
                                    width: MediaQuery.of(context).size.width *
                                        0.07,
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'lib/asset/twitter.png', // Replace with your image path
                                    width: MediaQuery.of(context).size.width *
                                        0.07,
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                  ),
                                ),
                              ],
                            )
                          ]))
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
