import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const TextStyle HeaderText = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const TextStyle BodyText = TextStyle(
  fontSize: 22,
  color: Colors.white,
);


const TextStyle BarText = TextStyle(

  fontSize: 22,
  color: Colors.white,

);

AnimatedContainer Animator = AnimatedContainer(
  duration: Duration(seconds: 5),
  color: Colors.white24,
  height: double.infinity,
  width: double.infinity,
  child: Text('Am an animated container'),

);