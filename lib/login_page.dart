import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 30, right: 30),
        children: [
          Column(
            children: [
              const SizedBox(height: 0), //height 135 rakhda rmro dekhyena
              Image.asset('assets/login.png'),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(192, 192, 192, 1), width: 3),
                  ),
                ),
              ),
              const SizedBox(height: 16.05),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(192, 192, 192, 1), width: 3),
                  ),
                ),
              ),
              const SizedBox(height: 16.05),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )),
              ]),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize:
                      MaterialStateProperty.all<Size>(const Size(354.0, 52.0)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 47),
              Row(
                children: [
                  Image.asset('assets/Vector 1.png'),
                  const Text(
                    "Or Continue With",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromRGBO(192, 192, 192, 1)),
                  ),
                  Image.asset('assets/Vector 1.png'),
                ],
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.red),
                    minimumSize: const Size(354, 59.95),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(FontAwesomeIcons.google),
                    const SizedBox(width: 101),
                    const Text(
                      "Google",
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.04),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 3, color: Colors.blue),
                  minimumSize: const Size(354, 59.95),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(FontAwesomeIcons.facebook),
                    const SizedBox(width: 101),
                    const Text(
                      "Facebook",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 33.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dont have an acount?'),
                  TextButton(onPressed: () {}, child: const Text('Signup'))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
