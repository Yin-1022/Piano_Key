import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final player = AudioPlayer();
  Color colorCont = Colors.white;
  int counter=0;

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
        theme: ThemeData.dark(),
        home: Scaffold
              (
                body: Row
                  (
                    children:
                      [
                        GestureDetector
                          (
                            child: Expanded(child: Container(color: colorCont,height: 400,width: 115,)),
                            onTap: ()
                             {
                                player.play(AssetSource('do.mp3'));
                                print("Do");
                                counter++;
                                if(counter==1)
                                  {
                                    colorCont=Colors.grey;
                                    setState(() {});
                                    counter++;
                                  }
                                else if (counter==2)
                                  {
                                    colorCont=Colors.white;
                                    setState(() {});
                                    counter==0;
                                  }
                             },
                          ),
                        SizedBox(height: 10, width: 10,),
                        GestureDetector
                          (
                            child: Expanded(child: Container(color: Colors.white,height: 400,width: 115,)),
                            onTap: ()
                            {
                                 player.play(AssetSource('re.mp3'));
                                 print("Re");
                            },
                          ),
                        SizedBox(height: 10, width: 10,),
                        GestureDetector
                          (
                            child: Expanded(child: Container(color: Colors.white,height: 400,width: 115)),
                            onTap: ()
                            {
                                 player.play(AssetSource('mi.mp3'));
                                 print("Mi");
                            },
                          ),
                        SizedBox(height: 10, width: 10,),
                        GestureDetector
                          (
                            child: Expanded(child: Container(color: Colors.white,height: 400,width: 115)),
                            onTap: ()
                            {
                                player.play(AssetSource('fa.mp3'));
                                print("Fa");
                            },
                          ),
                        SizedBox(height: 10, width: 10,),
                        GestureDetector
                          (
                            child: Expanded(child: Container(color: Colors.white,height: 400,width: 115)),
                            onTap: ()
                            {
                                player.play(AssetSource('sol.mp3'));
                                print("Sol");
                            },
                          ),
                        SizedBox(height: 10, width: 10,),
                        GestureDetector
                          (
                            child: Expanded(child: Container(color: Colors.white,height: 400,width: 115)),
                            onTap: ()
                            {
                                player.play(AssetSource('la.mp3'));
                                print("La");
                            },
                          ),
                        SizedBox(height: 10, width: 10,),
                        GestureDetector
                          (
                            child: Expanded(child: Container(color: Colors.white,height: 400,width: 115)),
                            onTap: ()
                            {
                                player.play(AssetSource('si.mp3'));
                                print("Si");
                            }
                          ),
                      ],
                  ),
              ),
      );
  }
}


