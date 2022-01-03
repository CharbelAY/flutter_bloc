import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test234/screen_one.dart';
import 'package:test234/screen_three.dart';
import 'package:test234/screen_two.dart';
import 'package:test234/user_cubit.dart';

class AppRouter {
  final UserCubit userCubit;

  AppRouter({required this.userCubit});

  MaterialPageRoute? onGenerateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      builder: (_) => BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state.loggedIn) {
            switch (routeSettings.name) {
              case 'ok':
                return ScreenThree();
              case '/':
                return ScreenOne();
            }
          }
          return ScreenTwo();
        },
      ),
    );
  }
}
