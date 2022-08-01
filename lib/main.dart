import 'package:flutter/material.dart';
import 'package:flashchatnew/screens/welcome_screen.dart';
import 'package:flashchatnew/screens/login_screen.dart';
import 'package:flashchatnew/screens/registration_screen.dart';
import 'package:flashchatnew/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

//void main() => runApp(FlashChat());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
