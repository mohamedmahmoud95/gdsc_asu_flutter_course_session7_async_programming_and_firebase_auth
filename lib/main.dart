import 'package:flutter/material.dart';

import 'async_page.dart';


void main()
{
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void getData(){


    Future.delayed(const Duration (seconds: 3), () {
      debugPrint("first print statement, after 3 seconds");
    });

    Future.delayed(const Duration (seconds: 1), (){
    debugPrint("first print statement, after 1 second");
    });

    debugPrint("third print statement, with no delay");

  }

   @override void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AsyncPage(

      ),
    );
  }
}
