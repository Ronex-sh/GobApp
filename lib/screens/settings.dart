import 'package:flutter/material.dart';

class SetingsScreen extends StatefulWidget {
  @override
  _SetingsScreenState createState() => _SetingsScreenState();
}

class _SetingsScreenState extends State<SetingsScreen> {
  int settingColor = 0xff6b23cf;
  List<int> colors=[0xff126cdb,0xffd11100,0xff000000,0xff5fd61a];
  double fontSize = 16;

  void setColor(int color) {
    setState(() {
      settingColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        backgroundColor: Color(settingColor),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap:()=> setColor(colors[0]),
                child:  ColorSquare(colors[0]),
              ),
               GestureDetector(
                onTap:()=> setColor(colors[1]),
                child:  ColorSquare(colors[1]),
              ),
              
                 GestureDetector(
                onTap:()=> setColor(colors[2]),
                child:  ColorSquare(colors[2]),
              ),
                 GestureDetector(
                onTap:()=> setColor(colors[3]),
                child:  ColorSquare(colors[3]),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}

class ColorSquare extends StatelessWidget {
  final int colreCode;
  ColorSquare(this.colreCode);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      width: 73,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Color(colreCode),
      ),
    );
  }
}
