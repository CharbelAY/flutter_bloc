import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test234/app_router.dart';

class ScreenOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen one'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('login'),
          onPressed: (){
            Navigator.pushNamed(context, 'ok');
          },
        ),
      ),
    );
  }

}