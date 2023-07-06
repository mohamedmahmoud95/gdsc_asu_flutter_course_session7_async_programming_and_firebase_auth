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


  //Synchronous vs Asynchronous


  /*
  async: The async keyword is used to mark a function as asynchronous.
  It allows the function to use the await keyword and indicates that the function may perform asynchronous operations.
await: The await keyword can only be used within an async function.
 It is used to pause the execution of the function until a future or a promise completes and returns a result.
  When an await expression is encountered, the function is suspended,
   and control is returned to the caller until the awaited operation is completed.
   */

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
