import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frin/screens/form_screen.dart';
import 'package:frin/screens/home.dart';
import 'package:frin/services/authservices.dart';
import '../widgets/widgets.dart';
import 'package:frin/pallete.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final AuthServices  _authe = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          appBar: AppBar(
            title: Text('FRIN MOBILE APP'),
            centerTitle: true,
            elevation: 0.0,
            titleTextStyle: BarText,
            backgroundColor: Colors.lightGreen,
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            dragStartBehavior: DragStartBehavior.down,
            clipBehavior: Clip.antiAlias,
            reverse: false,
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 80,
                    child: Center(
                      child: Text(
                        'FORESTRY RESEARCH \nINSTITUTE OF NIGERIA',
                        style: HeaderText,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hinter: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            TextButton(
                              onPressed: () {},

                              child: Text('Forgot Password?', style: BarText,)
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text('Login'),
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                    BorderSide(color: Colors.white, width: 1),
                                  )),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                                  );
                                },
                                child: Text(
                                  'Create Account', style: BodyText),
                                ),
                              ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}