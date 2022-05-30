import 'package:checkpoint3/app/home_page/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                "CLIQUE NA IMAGEM",
                style: TextStyle(fontSize: 25),
              ),
              GestureDetector(
                child: Image.asset(controller.isImageChanged
                    ? controller.imageFelizPath
                    : controller.imageTristePath),
                onTap: () {
                  controller.changeImage();
                },
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "CLIQUE NOS BOTÕES PARA AUMENTAR OU DIMINUIR A FONTE",
                style: TextStyle(fontSize: controller.fontSize),
              ),
              SizedBox(height:15 ,),
              ElevatedButton(
                  onPressed: () {
                    controller.fontIncrease();
                  },
                  child: const Text("+",style: TextStyle(fontSize: 20))),
             
              ElevatedButton(
                  onPressed: () {
                    controller.fontDecrease();
                  },
                  child: const Text("-", style: TextStyle(fontSize: 20),)),
            ],
          ),
        ),
      ),
    );
  }
}
