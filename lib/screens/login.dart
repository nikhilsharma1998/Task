import 'package:codeverse_mt/network/apicall.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  Api obj = Api();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        child: Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.yellow),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    controller: userName,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "User Name"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: password,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () =>
                          obj.loginApi(userName.text, password.text),
                      child: Text("Login"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
