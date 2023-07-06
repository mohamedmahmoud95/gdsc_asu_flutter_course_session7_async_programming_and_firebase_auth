import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HTTPPage extends StatefulWidget {
  const HTTPPage({Key? key}) : super(key: key);

  @override
  State<HTTPPage> createState() => _HTTPPageState();
}

class _HTTPPageState extends State<HTTPPage> {


  //--------------------------------------------------------------------------//
  //HTTP request and response with a dummy API example
  /*
  void getTime() async{
    //dumy API
    Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    debugPrint(response.body);
  }
 //--------------------------------------------------------------------------//
  */




  //--------------------------------------------------------------------------//
  //HTTP request and response with a dummy API example
  //decoding response
  void getTime() async{
    //dumy API
    Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    Map data = jsonDecode(response.body);
    debugPrint(data.toString());
    debugPrint(data['title']);
  }
  //--------------------------------------------------------------------------//



  /*
  //--------------------------------------------------------------------------//
  //HTTP request and response - World time API
  void getTime() async{
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Africa/Cairo'));
    Map data = jsonDecode(response.body);
     debugPrint(data.toString());
    debugPrint(data['datetime']);
  }
  //--------------------------------------------------------------------------//
*/



  @override
  void initState(){
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
