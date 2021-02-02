import 'package:flutter/material.dart';
import 'package:tes_apk/screen/home.dart';
import 'package:tes_apk/widgets/widget.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  alignment: Alignment.topCenter,
                  //padding: EdgeInsets.only(
                  //top MediaQuery.of(context).size.height / 1 / 4),
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Container(
                          child: Image.asset("images/twit2.png"),
                          width: MediaQuery.of(context).size.width * 1 / 2),
                      Text(
                        "Member SignIn",
                        style: judulLoginPage(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                          decoration: decorationLogin(
                        "Enter your email",
                        "email",
                        Icon(
                          Icons.email_outlined,
                        ),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: decorationLogin(
                          "Enter your password",
                          "password",
                          Icon(
                            Icons.lock_outline,
                          ),
                        ),
                        obscureText: true,
                      ),
                      Container(
                        alignment: Alignment(-1.0, 0.0),
                        padding: EdgeInsets.only(top: 15.0, bottom: 20.0),
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              splashColor: Color(0XFFFF5722),
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Home();
                                }));
                              },
                              child: Center(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0XFFFF5252),
                                    Color(0XFFF44336)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          "OR",
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Not yet a member? ",
                          ),
                          Text(
                            "Sign Up",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
