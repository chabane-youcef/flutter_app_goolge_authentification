import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

enum AuthMode { LOGIN, REGISTER }

class _AuthScreenState extends State<AuthScreen> {
  double screenHeight;

  PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 1.0,
  );

  gotoLogin() {
    _pageController.animateToPage(
      0,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  gotoRegister() {
    _pageController.animateToPage(
      1,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            lowerHalf(context),
            upperHalf(context),
            SizedBox(
              height: screenHeight,
              child: PageView(
                controller: _pageController,
                physics: AlwaysScrollableScrollPhysics(),
                children: <Widget>[
                  loginCard(context),
                  singUpCard(context),
                ],
              ),
            ),

            //pageTitle(),
          ],
        ),
      ),
    );
  }

  Widget upperHalf(BuildContext context) {
    return Container(
      height: screenHeight / 2,
      child: Image.asset(
        'assets/images/auth.jpg',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget lowerHalf(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: screenHeight / 2,
        color: Color(0xffECF0F3),
      ),
    );
  }

  Widget loginCard(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: screenHeight / 4),
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Form(
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Your Email",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Password",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: FlatButton(
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 16),
                      ),
                      color: Colors.grey,
                      textColor: Colors.white,
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      onPressed: () {},
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: Divider(
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                      Text("OR"),
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: Divider(
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: FlatButton(
                      child: Icon(
                        FontAwesomeIcons.google,
                        size: 20,
                      ),
                      color: Colors.grey,
                      textColor: Colors.white,
                      padding: EdgeInsets.only(
                        top: 12,
                        bottom: 12,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      onPressed:gotoRegister,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              "Don't have an account ?",
              style: TextStyle(color: Colors.grey),
            ),
            FlatButton(
              onPressed: gotoRegister,
              textColor: Colors.black87,
              child: Text("Create Account"),
            )
          ],
        ),
      ],
    );
  }

  Widget singUpCard(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: screenHeight / 4),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Your Name",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Your Email",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Container(),
                        ),
                        FlatButton(
                          child: Text("Sign Up"),
                          color: Color(0xFF4B9DFE),
                          textColor: Colors.white,
                          padding: EdgeInsets.only(
                              left: 38, right: 38, top: 15, bottom: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                "Already have an account?",
                style: TextStyle(color: Colors.grey),
              ),
              FlatButton(
                onPressed: gotoLogin,
                textColor: Colors.black87,
                child: Text("Login"),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget pageTitle() {
    return Container(
      margin: EdgeInsets.only(top: 70),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.airline_seat_legroom_normal,
            size: 48,
            color: Colors.white,
          ),
          Text(
            "Djo..",
            style: TextStyle(
                fontSize: 34, color: Colors.white, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
