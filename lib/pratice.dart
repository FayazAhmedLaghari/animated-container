import 'package:flutter/material.dart';
class pratice extends StatefulWidget {
  const pratice({super.key});
  @override
  State<pratice> createState() => _praticeState();
}
class _praticeState extends State<pratice> {
  var value=true;
  void fun(){
    TextField(
        decoration: InputDecoration(
        label: Text('Enter your Students data'),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    ),
    )
    );
  }
  var  _height=100.1;
   var _width=200.1;
  Color aniColor=Colors.indigoAccent;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           AnimatedContainer(height:_height,
                             width:_width,
                             color: aniColor,
                      duration: Duration(seconds: 9))  ,
                 ElevatedButton(onPressed: (){
                   setState(() {
                        if(value){
                          _height=500;
                          _width=300;
                          aniColor=Colors.yellow;
                          value=false;
                        }
                        else
                          {
                            _height=200;
                            _width=300;
                            aniColor=Colors.indigoAccent;
                            value=true;
                          }
                   });
                 }, child:Text('Animated')),
        ],
      ),
    );
  }
}
