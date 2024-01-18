
import 'package:listeners/listeners.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Application extends StatefulWidget {
  const Application({Key? key}): super(key: key);
  
@override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int counter = 0;

  void onPressed(){
    counter++;
    listeners.update('counter');
  }
  
  @override
  void initState() {
    listeners.add('counter', this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
    Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: <Widget>[
      Text('Counter $counter'),

      CupertinoButton(
        onPressed: onPressed,
        child:
        Text('+')
      )
    ]);
}


void main() async {
  runApp(CupertinoApp(
    debugShowCheckedModeBanner: false,
    home: 
    Container(
      color: Colors.white, 
      child: const Application()
    )
  ));
}