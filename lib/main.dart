import 'package:appretive_infosoft/screens/home/view/home_screen.dart';
import 'package:appretive_infosoft/screens/signup/view/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/signin/view/signin_screen.dart';

void main()
{
  runApp(
    GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => SigninScreen()),
        GetPage(name: '/signup', page: () => Signup_screen()),
        GetPage(name: '/home', page: () => HomeScreen()),
      ],
    ),
  );
}