import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frin/screens/login_screen.dart';
import 'package:frin/screens/form_screen.dart';
import 'package:frin/screens/home.dart';
import 'package:frin/screens/wrapper.dart';
import 'package:frin/services/authservices.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import './screens/login_screen.dart';
import 'package:frin/widgets/models/user.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      initialData: User(uid: ''),
      value: AuthServices().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FRIN MOBILE APP',
        theme: ThemeData(
          textTheme:
          GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginPage(),
      ),
    );
  }
}


