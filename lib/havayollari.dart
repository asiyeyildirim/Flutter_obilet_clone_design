import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HavaYollari extends StatelessWidget {

  String goruntu;
  String baslik1;
  String yazi1;
  String yazi2;
  String yazi3;
  String yazi4;
  String yazi5;
  String yazi6;
  String yazi7;
  String kalanKoltuk;


  HavaYollari({required this.goruntu, required this.baslik1, required this.yazi1, required this.yazi2, required this.yazi3,
      required this.yazi4, required this.yazi5, required this.yazi6, required this.yazi7, required this.kalanKoltuk});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0)
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(

              children: [
                Image.asset(goruntu, width: 30, height: 30,),
                Text("  "+baslik1, style: TextStyle(fontSize: 13,color: Colors.black, fontFamily: "fonts/Roboto-Bold.ttf")),
                Spacer(),
                Text(kalanKoltuk, style: TextStyle(fontSize: 13,color: Colors.orange, fontWeight: FontWeight.bold, fontFamily: "fonts/Roboto-Bold.ttf")),
              ],

            ),
          ),


          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: [
                Text(yazi1, style: TextStyle(fontSize: 12,color: Colors.black87,fontFamily: "fonts/Roboto-Light.ttf")),
                const Spacer(),
                Text(yazi2, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,fontFamily: "fonts/Roboto-Medium.ttf")),
                const Spacer(),
                Text(yazi3, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,fontFamily: "fonts/Roboto-Light.ttf"))
              ],
            ),


          ),

          Padding(
            padding: const EdgeInsets.only(right: 173),
            child: Row(
              children: [

                Text(yazi4, style: TextStyle(fontSize: 12,fontFamily: "fonts/Roboto-Light.ttf")),
                Spacer(),
                Icon(Icons.access_time,color: Colors.black26,),
                Text(yazi5,style: TextStyle(fontSize: 13,color: Colors.black87,fontFamily: "fonts/Roboto-Light.ttf"),),

              ],
            ),
          ),
          Divider(color: Colors.black12,height: 6,),

          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(yazi6, style: TextStyle(fontSize: 13, color: Colors.black54,fontFamily: "fonts/Roboto-Medium.ttf" )),
              Spacer(),
              Text(yazi7 , style: TextStyle(fontSize: 13, color: Colors.black54,fontFamily: "fonts/Roboto-Medium.ttf" )),

            ],
          ),
        ],

      ),

    );
  }
}
