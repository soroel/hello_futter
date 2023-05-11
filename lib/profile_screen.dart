import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final String userName;
  final String about;

  const ProfileScreen({Key? key, required this.userName, required this.about}): super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _userName = '';
  String _about = '';
  final String _profileImage = '';

  @override
  void initState() {
    super.initState();
    _userName = widget.userName;
    _about = widget.about;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Center(
            child: GestureDetector(
              onTap: () {
                // update profile picture
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(_profileImage),
                radius: 50,
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            initialValue: _userName,
            decoration: const InputDecoration(
              labelText: 'Username',
              contentPadding: EdgeInsets.all(16),
            ),
            onChanged: (value) {
              setState(() {
                _userName = value;
              });
            },
          ),
          const SizedBox(height: 8),
          TextFormField(
            initialValue: _about,
            decoration: const InputDecoration(
              labelText: 'About',
              contentPadding: EdgeInsets.all(16),
            ),
            onChanged: (value) {
              setState(() {
                _about = value;
              });
            },
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              // save profile changes
            },
            child: const Text('Save Changes'),
          ),
        ],
      ),
    );
  }
}
