
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DestinationCard extends StatelessWidget {
  final String name;
  final String speed;
  final String distance;

  const DestinationCard({
    required this.name,
    required this.speed,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey.shade300),top: BorderSide(color: Colors.grey.shade300)),
       
      ),
        // color: Colors.white,

     
      child: Padding(
        padding: const EdgeInsets.only(top:15.0,bottom: 15,right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
          children: [
            
            Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            
                Text(" $speed"),
                
                Text("$distance"),
               SvgPicture.asset("assets/minus.svg",width: 20,)
          ],
        ),
      ),
    );
  }
}