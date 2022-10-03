import 'package:authentication/firebase/auth.dart';
import 'package:authentication/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello \nThere!',
              textScaleFactor: 2.5,
            ),
            const SizedBox(
              height: 35,
            ),
            Form(
              child: Column(
                children: [
                  textFormField(
                    controller: email,
                    labletext: 'Email',
                    obscureText: false,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  textFormField(
                    controller: password,
                    labletext: 'Password',
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  materialButton(
                    onPressed: () {
                      userLogin(
                        context,
                        email: email.text,
                        password: password.text,
                      );
                    },
                    text: 'Login',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Text("Don't have an Account?"),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/register');
                  },
                  child: const Text("Register!"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
