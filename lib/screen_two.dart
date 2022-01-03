
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test234/user_cubit.dart';

class ScreenTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('screen two'),),
      body: Center(
        child: ElevatedButton(
          child: Text('login'),
          onPressed: (){
            BlocProvider.of<UserCubit>(context).grantPermission();
          },
        ),
      ),
    );
  }

}