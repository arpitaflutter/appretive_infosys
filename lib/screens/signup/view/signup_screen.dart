import 'package:appretive_infosoft/utils/shared_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup_screen extends StatefulWidget {
  const Signup_screen({super.key});

  @override
  State<Signup_screen> createState() => _Signup_screenState();
}

class _Signup_screenState extends State<Signup_screen> {

  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Signup"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: txtemail,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: txtpassword,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    String email = txtemail.text;
                    String password = txtpassword.text;

                    Shr shr = Shr();
                    shr.createdata(email, password);

                    Get.back();
                    Get.snackbar('Account registered successfully', '');
                  },
                  child: Text("Signup"),
                ),
                SizedBox(height: 20,),
                TextButton(onPressed: () {
                  Get.back();
                }, child: Text("you already have an account? sign in."),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
