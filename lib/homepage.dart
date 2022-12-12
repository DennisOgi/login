import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/utils/mybuttons.dart';
import 'package:login/utils/mytextfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _usernamecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  void signin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // ICOn
            const SizedBox(
              height: 50,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 150),
              child: Icon(
                Icons.lock,
                size: 80,
              ),
            ),

            const SizedBox(
              height: 24,
            ),

            // TEXT
            const Text(
              'Welcome back you\'ve been missed!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(
              height: 18,
            ),

            // TEXTFIELDS
            MyTextField(
                controller: _usernamecontroller,
                hinttext: 'Email',
                obscuretext: false),
            const SizedBox(
              height: 6,
            ),
            MyTextField(
                controller: _passwordcontroller,
                hinttext: 'Password',
                obscuretext: true),

            const SizedBox(
              height: 8,
            ),

            // FORGOT PASSWORD
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Forgot Password',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 14,
            ),

            // SIGN IN BUTTON
            MyButton(ontap: signin, textname: 'Sign In'),

            const SizedBox(
              height: 36,
            ),

            // CONTINUE WITH TEXT
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: const [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Or Continue With',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                  Expanded(child: Divider())
                ],
              ),
            ),

            const SizedBox(
              height: 24,
            ),

            // SIGN IN OPTIONS ICONS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Image.asset(
                        'lib/icon/google.png',
                        height: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Image.asset(
                        'lib/icon/apple.png',
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            // NOT A MEMBER REGISTER
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Row(
                children: const [
                  Text(
                    'Not a member?',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Register now.',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
