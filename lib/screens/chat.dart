import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:gappe_maro/widgets/chat_messages.dart';
import 'package:gappe_maro/widgets/new_messages.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void setupPushNotification() async {
    final fcm = FirebaseMessaging.instance;
    await fcm.requestPermission();

    //final token = await fcm.getToken();
    //print('this is token $token'); // could send this token (via HTTP or the Firestore SDK) to a backend

    fcm.subscribeToTopic('chat');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setupPushNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Text-Wext',
          style: TextStyle(
            fontSize: 24,
              color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: const Icon(
              Icons.exit_to_app,
              color:Colors.white,
            ),
          )
        ],
        backgroundColor: const Color.fromARGB(255, 23, 19, 40)//Color.fromARGB(255, 23, 2, 73),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/top.gif'),
          fit: BoxFit.fill,
        )),
        child: const Column(
          children: [
            Expanded(child: ChatMessages()),
            NewMessage(),
          ],
        ),
      ),
    );
  }
}
