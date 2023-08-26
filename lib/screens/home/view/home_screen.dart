import 'package:appretive_infosoft/screens/home/controller/home_controller.dart';
import 'package:appretive_infosoft/screens/home/model/api_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  HomeController controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();

    controller.getData();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: FutureBuilder(
          future: controller.getData(),
          builder: (context, snapshot) {
            if(snapshot.hasError)
              {
                return Text("${snapshot.error}");
              }
            else if(snapshot.hasData)
              {
                UserModel? u1 = snapshot.data as UserModel?;
                return Text("${u1!.name}");
              }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
