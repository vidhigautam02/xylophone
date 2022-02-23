import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());
class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      Expanded getkey({Color choose , int soundnumber}){
       return Expanded(
           child: FlatButton(
             color: choose,
             onPressed: (){
               final player = AudioCache();
               return player.play('note$soundnumber.wav');
        },

        ),
      );
    }


    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              getkey(choose: Colors.red ,soundnumber: 1),
              getkey(choose: Colors.yellow ,soundnumber: 2),
              getkey(choose: Colors.green ,soundnumber: 3),
              getkey(choose: Colors.blue ,soundnumber: 4),
              getkey(choose: Colors.pink ,soundnumber: 5),
              getkey(choose: Colors.deepPurple ,soundnumber: 6),
              getkey(choose: Colors.deepOrangeAccent ,soundnumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}





