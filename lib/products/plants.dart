import 'package:flutter/material.dart';

class Plants extends StatefulWidget {
  const Plants({super.key});

  @override
  State<Plants> createState() => _PlantsState();
}

class _PlantsState extends State<Plants> {

  int count_alo = 0;
  int count_pot = 0;
  void add_alo(){
    setState(() {
      count_alo += 1;
    });
  }
  void add_pot(){
    setState(() {
      count_pot += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          children: [
            Image.asset('assets/imgs/alovera.avif', width: 100),
            SizedBox(width: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Alovera", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(width: 30,),
                Text("\$200", style: TextStyle(fontSize: 15,color: Colors.white60)),
                Text("$count_alo is in your basket", style: TextStyle(fontSize: 15, color: Colors.amber),)
              ],
            ),
            const Expanded(child: SizedBox()),
            Container(
              child:  FilledButton(onPressed: add_alo, child: Text("Add", style: TextStyle(fontSize: 20, color: Colors.white)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 24, 138, 20)), // لون أخضر فاتح كمثال
              ),
              )
            )
          ],
        ),
        Row(
          children: [
            Image.asset('assets/imgs/photas.webp', width: 100,),
            SizedBox(width: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Photas", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("\$130", style: TextStyle(fontSize: 15,color: Colors.white60)),
                Text("$count_pot is in your basket", style: TextStyle(fontSize: 15, color: Colors.amber),)
              ],
            ),
            const Expanded(child: SizedBox()),
            Container(

              child:  FilledButton(onPressed: add_pot, child: Text("Add", style: TextStyle(fontSize: 20, color: Colors.white)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 24, 138, 20)), // لون أخضر فاتح كمثال
              ),)
            )
          ],
        )
      ],
    );
  }
}