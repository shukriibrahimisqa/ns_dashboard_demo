import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key, this.loginProvider});

  LoginProvider? loginProvider;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Login"),
    );
  }
}
