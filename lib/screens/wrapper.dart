import 'package:flutter/material.dart';
import 'package:frin/screens/home.dart';
import 'package:frin/screens/login_screen.dart';
import 'package:frin/widgets/models/user.dart';
import 'package:provider/provider.dart';

class MyWrapper extends StatelessWidget {
  const MyWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);


    if (user == null) {
      return LoginPage();
    } else {
      return HomeScreen();
  }
  }}
