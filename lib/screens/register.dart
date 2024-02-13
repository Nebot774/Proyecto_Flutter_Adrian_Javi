import 'package:flutter/material.dart';
import 'package:sprint/repository/register_repo.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _registerRepository = RegisterRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          ElevatedButton(
            child: Text('Register'),
            onPressed: () async {
              await _registerRepository.registerAnonymously();
              await _registerRepository.sendVerificationCode(_emailController.text, 'https://your-app-url.com');
            },
          ),
        ],
      ),
    );
  }
}