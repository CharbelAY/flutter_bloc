import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test234/user_cubit.dart';

class ScreenThree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    print('okkkkkkk');
    return Scaffold(
      appBar: AppBar(
        title: Text('hello '),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('okk'),
          onPressed: (){
            BlocProvider.of<UserCubit>(context).removePermission();
          },
        ),
      ),
    );
  }

}