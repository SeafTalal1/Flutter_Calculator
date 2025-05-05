import 'package:calculator/products/plants.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 28, 39),
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/imgs/noBG.png', width: 80),
              Container(
                padding: EdgeInsets.all(20),
                child: Text('الريــان', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),)),
            ],
          ),
          Container(
            color: Color.fromARGB(255, 3, 56, 77),
            padding: const EdgeInsets.all(10),
            child: Text("Plants", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          ),
          Container(
            color: Color.fromRGBO(1,29,40, 1),
            padding: const EdgeInsets.all(10),
            child: Plants(),
          ),
        ],
      )
      ),
    );
  }
}