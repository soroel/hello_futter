
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({
    Key,key,
  }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: const <Widget>[
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'User1',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Path: lib\profile_ID.dart

// Compare this snippet from lib\main.dart: