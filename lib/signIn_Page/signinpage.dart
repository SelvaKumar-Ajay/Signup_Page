import 'package:flutter/material.dart';

import '../Buttons/buttons.dart';

Widget content() {
  String networkImage =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Facebook_icon.svg/2048px-Facebook_icon.svg.png";
  return Padding(
    padding: const EdgeInsets.all(26),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.w100,
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        SizedBox(
            height: 40,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
              ),
              onPressed: () {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/google_logo_1.png"),
                    const Text("Using with Google",
                        style: TextStyle(color: Colors.black)),
                    Opacity(
                        opacity: 0,
                        child: Image.asset("assets/images/google_logo_1.png")),
                  ]),
            )),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            height: 40,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 3, 55, 199)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(networkImage),
                  const Text("Using with Facebook",
                      style: TextStyle(color: Colors.white)),
                  Opacity(opacity: 0, child: Image.network(networkImage)),
                ],
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 40,
          child: CustomButtons(
            givenButtonColor: const Color.fromARGB(204, 83, 21, 63),
            givenText: "Using with Email",
            onPressed: () {},
          ),
        ),
        const Text(
          "or",
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 40,
          child: CustomButtons(
            givenButtonColor: const Color.fromARGB(255, 86, 95, 52),
            givenText: "Go with Anonymous",
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time Tracker",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            )),
        backgroundColor: Colors.grey[500],
        elevation: 4,
        centerTitle: true,
      ),
      body: content(),
      backgroundColor: Colors.grey[200],
    );
  }
}
