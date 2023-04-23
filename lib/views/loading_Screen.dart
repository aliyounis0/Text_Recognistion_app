import 'dart:async';

import 'package:flutter/material.dart';

import 'result_page.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  Timer? _timer;

  _startTimer(){
    Timer(const Duration(seconds: 3),_goNext);
  }
  _goNext(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage()));
  }
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: const CircularProgressIndicator()),
    );
  }


  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
