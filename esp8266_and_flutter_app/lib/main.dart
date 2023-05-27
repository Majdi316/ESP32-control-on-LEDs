

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';


void main(){
  runApp(ESP());
}

class ESP extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //start appbar
        appBar: AppBar(
          title: Text(
            "ESP & Flutter",
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
            ),
        ),
       //start body of ESP page
        body: ListView(
          children: [
            //start first element in body
            const ListTile(
              title:  Text(
                "control On Green LED",
                style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                ),
              ),
              leading: Icon(
                Icons.cast_connected,
                size: 45,
                color: Colors.blue,
              ),
              subtitle:  Text(
                "ESP32 & Flutter",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            //second element in body
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50,right: 25,top: 15,bottom: 15,) ,
                  child: ElevatedButton(
                  child: const Text(
                    "on",
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 30,),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), ),
                  ),
                  onPressed: (){
                    Green_on();
                  },
                  
              ),
                ),
              Container(
                margin: EdgeInsets.only(left: 50,right: 25,top: 15,bottom: 15,) ,
                
                child: ElevatedButton(
                  child: const Text(
                    "off",
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 30,),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), ),
                  ),
                  onPressed: (){
                    Green_off();
                  },
                  
                ),
              ),
              ],
            ),
             
          
            //start 3 element in body
             const ListTile(
              title:  Text(
                "control On Red LED",
                style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                ),
              ),
              leading: Icon(
                Icons.cast_connected,
                size: 45,
                color: Colors.blue,
              ),
              subtitle:  Text(
                "ESP32 & Flutter",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            //start 4 element on body
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50,right: 25,top: 15,bottom: 15,) ,
                  child: ElevatedButton(
                  child: const Text(
                    "on",
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 30,),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), ),
                  ),
                  onPressed: (){
                    Red_on();
                  },
                  
              ),
                ),
              Container(
                margin: EdgeInsets.only(left: 50,right: 25,top: 15,bottom: 15,) ,
                
                child: ElevatedButton(
                  child: const Text(
                    "off",
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 30,),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), ),
                  ),
                  onPressed: (){
                    Red_off();
                  },
                  
                ),
              ),
              ],
            ),
          ],
        ),
        ),
    );
  }
}
 // ignore: non_constant_identifier_names
 Future Green_on() async {
  var url = Uri.parse('http://192.168.4.1/green-on');
  // ignore: unused_local_variable
  http.Response res = await http.get(url);
  // ignore: avoid_print
  print(res);
}
// ignore: non_constant_identifier_names
 Future Green_off() async {
  var url = Uri.parse('http://192.168.4.1/green-off');
  // ignore: unused_local_variable
  http.Response res = await http.get(url);
  // ignore: avoid_print
  print(res);
}
// ignore: non_constant_identifier_names
 Future Red_on() async {
  var url = Uri.parse('http://192.168.4.1/red-on');
  // ignore: unused_local_variable
  http.Response res = await http.get(url);
  // ignore: avoid_print
  print(res);
}
// ignore: non_constant_identifier_names
 Future Red_off() async {
  var url = Uri.parse('http://192.168.4.1/red-off');
  // ignore: unused_local_variable
  http.Response res = await http.get(url);
  // ignore: avoid_print
  print(res);
}