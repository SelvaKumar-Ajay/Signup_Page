import 'package:flutter/material.dart';
import 'signIn_Page/signinpage.dart';

void main() {
  runApp(const Sk());
}

class Sk extends StatelessWidget {
  const Sk({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Sign in Page",
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const SignInPage());
  }
}
