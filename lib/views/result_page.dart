import 'dart:io';

import 'package:flutter/material.dart';
import 'package:text_recognition/shared/variable.dart';
import 'package:text_recognition/views/home_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
        centerTitle: true,
        automaticallyImplyLeading:false,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:70.0,horizontal: 20.0,),
          child: Column(
            children: [
              Container(
                  child: Image.file(File(imageFile!.path),fit: BoxFit.cover,)
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsetsDirectional.all(10),
                child: Text(
                  scannedText,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),

                ),
              ),
             const SizedBox(height: 50,),
              ElevatedButton(
                  onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage())) ;
                  },
                  child: Text("Return")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
