import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:obilet_clone_design/havayollari.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  DateTime now = DateTime.now();
  final formattedDate = DateFormat('EEEE, MMM d, yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(



        toolbarHeight: 100,
        centerTitle: true,
        automaticallyImplyLeading: false,

        backgroundColor:Colors.red[800],


        title: Padding(

          padding: const EdgeInsets.all(2.0),

          child: Row( crossAxisAlignment: CrossAxisAlignment.end,

           children: <Widget>[

             Padding(
               padding: const EdgeInsets.all(6.0),
               child: TextButton(onPressed: (){},
                  style: TextButton.styleFrom(side: BorderSide(color: Colors.white, style: BorderStyle.solid, width: 1.0)),
                  child: Text('< Önceki', style:TextStyle(fontSize: 13, color: Colors.white),),
                    ),
                  ),
              //Takvim Buton

             Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(6.0),
                 child: ElevatedButton.icon(onPressed: (){},
                     icon: Icon(
                     Icons.date_range_outlined,),
                     label: Text("${formattedDate.format(DateTime.now())}", style:TextStyle(fontSize: 13, color: Colors.white), ),
                    style: ElevatedButton.styleFrom(side: BorderSide(color: Colors.white, style: BorderStyle.solid, width: 1.0), backgroundColor:Colors.red[800]),


                   ),
               ),
             ),

            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextButton(onPressed: (){
                //Navigator.
              },
                style: TextButton.styleFrom(side: BorderSide(color: Colors.white, style: BorderStyle.solid, width: 1.0)),
                  child: Text('Sonraki >', style: TextStyle(fontSize: 13, color: Colors.white),)
              ),
            ),

             ],

            ),
            ),

    ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [



              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                         children: [

                           ElevatedButton.icon(onPressed: (){},
                               style: ElevatedButton.styleFrom(backgroundColor: Colors.red[800]),
                               icon: Icon(Icons.find_replace_sharp),
                               label: Text("SIRALA", style: TextStyle(fontSize:11),)),


                           ElevatedButton.icon(onPressed: (){},
                               style: ElevatedButton.styleFrom(backgroundColor: Colors.red[800]),
                               icon: Icon(Icons.filter_list),
                               label: Text("FİLTRE", style: TextStyle(fontSize: 11),)),


                          ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                              child: Text("Aktarmasız", style: TextStyle(fontSize:11,color: Colors.black54),),


                          ),

                           ElevatedButton(onPressed: (){},
                             style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                             child: Text("Sabaha Karşı", style: TextStyle(fontSize: 11,color: Colors.black54),),


                           )

                         ],


              ),


              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left:8),
                    child: ElevatedButton.icon(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[600], //butona renk verdik
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))), // butonu ovalledik
                      ),
                        icon: Icon(Icons.diamond_outlined, color: Colors.white,size:18,
                        ),


                        label: Text("Kampanya", style: TextStyle(fontSize: 13,color: Colors.white),)),
                  ),
                  ],

                 ),
              Row(
               children: [


                 Padding(
                   padding: const EdgeInsets.all(7.0),
                    child: Card(
                    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blueGrey, width: 4),borderRadius: BorderRadius.circular(5.0),),
                     child: Container(


                     child: Padding(
                       padding: const EdgeInsets.all(6.0),
                       child: Column(
                         children: [
                               Row(
                                children: [
                               Padding(
                                 padding: const EdgeInsets.all(1.0),
                                 child: Icon(Icons.directions_car_filled_rounded, color: Colors.red[800],size: 33,),
                                ),
                               Text(" Araç", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.red[800]),),
                             ],
                                 ),

                              Text("250 TL İndirim!", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white, backgroundColor: Colors.blueGrey),),

                           Divider(color: Colors.blueGrey,),
                           Text("Detaylı Bilgi", style: TextStyle(fontSize: 13, color: Colors.black, backgroundColor: Colors.white,),),
                         ],
                       ),
                     ),
                   ),
                   ),
                 ),


          Spacer(),

                 //OTEL

                 Padding(
                   padding: const EdgeInsets.all(6.0),
                   child: Card(
                     shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blueGrey, width: 4),borderRadius: BorderRadius.circular(5.0),),

                     child: Container(


                       child: Padding(
                         padding: const EdgeInsets.all(6.0),
                         child: Column(
                           children: [
                             Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(1.0),
                                   child: Icon(Icons.home_work_outlined, color: Colors.red[800],size: 33,),
                                 ),
                                 Text(" Otel", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.red[800]),),
                                  ],
                                ),

                             Text("250 TL İndirim!", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white, backgroundColor: Colors.blueGrey),),

                             Divider(color: Colors.blueGrey,),
                             Text("Detaylı Bilgi", style: TextStyle(fontSize: 13, color: Colors.black, backgroundColor: Colors.white,),),
                           ],
                         ),
                       ),
                     ),
                   ),
                 ),

                 Spacer(),


                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(
                     shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blueGrey,width: 4),borderRadius: BorderRadius.circular(5.0),),

                     child: Container(


                       child: Padding(
                         padding: const EdgeInsets.all(6.0),
                         child: Column(
                           children: [
                             Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(1.0),
                                   child: Icon(Icons.airplanemode_active_rounded, color: Colors.red[800],size: 33,),
                                 ),
                                 Text(" Uçak", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.red[800]),),
                               ],
                             ),

                             Text("40 TL İndirim!", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white, backgroundColor: Colors.blueGrey),),

                             Divider(color: Colors.blueGrey,),
                             Text("Detaylı Bilgi", style: TextStyle(fontSize: 13, color: Colors.black, backgroundColor: Colors.white,),),
                           ],
                         ),
                       ),
                     ),
                   ),
                 ),

               ],
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),

                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   HavaYollari(goruntu: "gorseller/thy.png", baslik1: "TÜRK HAVA YOLLARI",kalanKoltuk: "", yazi1: "Direkt", yazi2: " 02:25 →03:45", yazi3: " 989.99 TL", yazi4:" IST-AYT", yazi5: "1s 20dk", yazi6: "İstanbul Havalimanı-Antalya Havalimanı", yazi7: " ",),
                   HavaYollari(goruntu: "gorseller/pegasus.png", baslik1: "PEGASUS AIRLINES", kalanKoltuk:"Son 7 koltuk",yazi1: "Direkt", yazi2: "21:55 →23:15", yazi3: "683,99 TL", yazi4:" SAW-GZP", yazi5: "1s 20dk", yazi6: "Sabiha Gökçen Havalimanı-Antalya Havalimanı", yazi7: "PROMOSYONLU"),
                   HavaYollari(goruntu: "gorseller/anadolu.png", baslik1: "ANADOLU JET", kalanKoltuk: "", yazi1: "Direkt", yazi2: "13:20 →14:35", yazi3: "1.034,99 TL", yazi4: " SAW-AYT", yazi5: "1s 15dk", yazi6: "Sabiha Gökçen Havaimanı-Antalya Havalimanı", yazi7: "PROMOSYONLU"),
                  HavaYollari(goruntu: "gorseller/pegasus.png", baslik1: "PEGASUS AIRLINES",kalanKoltuk: "", yazi1: "Direkt", yazi2: "05:50 →07:05", yazi3: "995,99 TL", yazi4: " SAW-AYT", yazi5: "1s 15dk", yazi6: "Sabiha Gökçen Havalimanı- Antalya Havalimanı", yazi7: " "),
                  HavaYollari(goruntu: "gorseller/thy.png", baslik1: "TÜRK HAVA YOLLARI",kalanKoltuk: "Son 5 koltuk", yazi1: "Direkt", yazi2: "10:45 →12:00", yazi3: "1.029.99 TL", yazi4: " IST-AYT", yazi5: "1s 15 dk", yazi6: "İstanbul Havalimanı-Antalya Havalimanı", yazi7: "PROMOSYONLU")
                 ],
                          ),
                          ),



            ],
      ),
    ),
    ),
      );
  }
}
