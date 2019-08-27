import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'dart:async';



void main() => runApp(MyApp());









class MyApp extends StatelessWidget {


  //final ByteData bytes = await rootBundle.load('images/bhagwan.jpg');
 // await
  Future<void> _shareImage() async {
    try {
      final ByteData bytes = await rootBundle.load('images/bhagwan.jpg');
      await Share.file(
          'esys image', 'esys.png', bytes.buffer.asUint8List(), 'image/jpg', text: 'My optional text.');
    } catch (e) {
      print('error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DankChat',
      theme: ThemeData(


        primarySwatch: Colors.lightBlue,

      ),
      home: Scaffold(appBar: AppBar(

        title: Text('DankChat'),

      ),body:ListView(shrinkWrap:true,children:<Widget> [

          Card(child:Column(children: <Widget>
          [
             Image.asset('images/bhagwan.jpg'),
            MaterialButton(onPressed:_shareImage,child: Text('Share'),color: Colors.green)

        ])),


          Card(child:Column(children: <Widget>
          [
            Image.asset('images/kamra.jpg'),
            MaterialButton(onPressed: _shareImage,child: Text('Share'))




    ]))
          
          
          
        ]  )
        
        
      ));

      //,

  }
}



