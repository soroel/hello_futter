import 'package:flutter/material.dart';
import 'profile_ID.dart';
import 'chart_screen.dart';
import 'profile_screen.dart';

void main() => runApp(const ChattingApp());

class ChattingApp extends StatelessWidget {
  const ChattingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Chat With Me',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello App'),
          titleTextStyle: const TextStyle(color: Colors.black),
          backgroundColor: Colors.deepPurpleAccent,

        ),

        body: Column(

          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  // get friend's index and name
                  final friendIndex = index + 1;
                  final friendName = 'Friend $friendIndex';

                  return GestureDetector(
                    onTap: () {
                      // navigate to chat screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatScreen(
                            friendName: friendName,
                            friendIndex: friendIndex,
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(friendName),
                      subtitle: const Text('This is the latest message'),
                      leading: CircleAvatar(
                        backgroundColor: Colors.deepPurpleAccent,
                        child: Text('U$friendIndex'),
                      ),
                      trailing: const Icon(Icons.message),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
    floatingActionButton:FloatingActionButton(
         onPressed: () {
            //navigate to my profile screen
           Navigator.push(
             context,
              MaterialPageRoute(
                  builder: (_) => const ProfileScreen(

                  )),
           );
          },
         child: const Icon(Icons.account_circle),
        ),
      ),
    );

  }
}

