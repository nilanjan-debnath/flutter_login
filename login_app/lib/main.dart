import 'package:flutter/material.dart';
import 'package:login_app/sign_in_up.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/sign_in_up',
    routes: {
      '/sign_in_up': (context) => const sign_in_up(),
    },
  ));
}
