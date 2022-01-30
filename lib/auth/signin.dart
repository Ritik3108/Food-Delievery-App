import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/background.jfif"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Sign in to continue"),
                  Text(
                    "Vegi",
                    style:
                        TextStyle(fontSize: 50, color: Colors.white, shadows: [
                      BoxShadow(
                          blurRadius: 5,
                          color: Colors.green.shade900,
                          offset: const Offset(3, 3)),
                    ]),
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Apple,
                        text: "Sign in with Apple",
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SignInButton(
                        Buttons.Google,
                        text: "Sign in with Google",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text("By Sign in,you are agreeing to our"),
                      Text("terms & privacy policy"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
