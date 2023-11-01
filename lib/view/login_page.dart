import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black87,
                    size: 28,
                  )),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "HELLO THERE",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const Text(
                "Please enter your username/email and password to sign in.",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Username/Email",
                style: TextStyle(fontSize: 18),
              ),
              const TextField(),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Password",
                style: TextStyle(fontSize: 18),
              ),
              const TextField(),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  const Text(
                    "Remember me",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
