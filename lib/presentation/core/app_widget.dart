import 'package:flutter/material.dart';
import 'package:flutter_arch/presentation/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.green[800],
        accentColor: Colors.blueAccent,
        inputDecorationTheme: InputDecorationTheme(
          focusColor: Colors.green[800],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)
          )
        )
      ),
      home: SignInPage(),
    );
  }
}
