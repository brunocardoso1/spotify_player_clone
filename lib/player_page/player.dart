import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class SpotifyPlayer extends StatelessWidget {

  String foto = "https://i.scdn.co/image/ab67616d0000b273e01d7d558032457b0e4883f6";


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient:LinearGradient(
          begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.yellow[800],
              Colors.black,
            ]
        )),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.keyboard_arrow_down_outlined, size: 30,),
          title: Center(child: Text("Liked Songs", style: TextStyle(
            fontSize: 15,
          ),)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.more_horiz),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(foto),
                  )
                ),
                width: 280,
                height: 280,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Ignorance", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 165),
                    child: Icon(Icons.favorite, color: Colors.white,),
                  )
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top: 3, left: 65),
               child: Row(
                 children: [
                   Text('Paramore', style: TextStyle(
                     fontSize: 14,
                     color: Colors.white
                   ),)
                 ],
               ),
             ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.white,
                    width: 280,
                    height: 3,
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("3:31", style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                  ),)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.shuffle, color: Colors.green, size: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Icon(Icons.skip_previous, color: Colors.white, size: 30),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),
                      child: Icon(Icons.play_arrow, size: 30,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 45),
                  child: Icon(Icons.skip_next, color: Colors.white, size: 30),
                ),
                Icon(Icons.repeat, color: Colors.green, size: 25)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 60),
              child: Row(
                children: [
                  Icon(Icons.volume_up_rounded, color: Colors.green, size: 17),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("DESKTOP-BRUNO", style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 13
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Icon(Icons.ios_share, color: Colors.white, size: 17,),
                  )
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
