import 'package:appretive_infosoft/utils/shared_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Signin"),
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
                  onPressed: () async {

                    String? useremail = txtemail.text;
                    String? userpassword = txtpassword.text;

                    Shr shr = Shr();
                    Map m1 = await shr.readdata();

                    if(useremail == m1['e1'] && userpassword == m1['p1'])
                      {
                        Get.toNamed('/home');
                        Get.snackbar('Successfully logged in', '');
                      }
                    else
                      {
                        Get.snackbar('please enter valid email or password', 'you don\'t have an account');
                      }
                  },
                  child: Text("Signin"),
                ),
                SizedBox(height: 20,),
                TextButton(onPressed: () {
                  Get.toNamed('/signup');
                }, child: Text("you dont't have an account? sign up."),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
