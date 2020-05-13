import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './auth_screen.dart';
import '../providers/auth.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Text(
              'hello developper',
              style: TextStyle(
                fontSize: 24,
                color: Colors.teal,
              ),
            ),
          ),
          FlatButton(
            child: Text('LOGOUT'),
            onPressed: () {
              Provider.of<Auth>(context, listen: false).signOutgoogle();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AuthScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
