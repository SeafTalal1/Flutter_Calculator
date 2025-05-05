import 'package:flutter/material.dart';

class Customplantcard extends StatefulWidget {

  final String imgPath;
  final String name;
  final int price;
  final VoidCallback onTap;

  const Customplantcard({
    required this.name,
    required this.price,
    required this.imgPath,
    required this.onTap,
    super.key});

  @override
  State<Customplantcard> createState() => _CustomplantcardState();
}

class _CustomplantcardState extends State<Customplantcard> {



  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Image.asset(widget.imgPath, width: 100,),
            SizedBox(width: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Text(widget.price.toString(), style: TextStyle(fontSize: 15,color: Colors.white60))
              ]
            ),
            const Expanded(child: SizedBox()),
            Container(

              child:  FilledButton(onPressed: widget.onTap, child: Text("+", style: TextStyle(fontSize: 20, color: Colors.white)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 24, 138, 20)), 
              ),)
            )
          ],
        );
  }
}