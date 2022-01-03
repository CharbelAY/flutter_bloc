import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test234/app_router.dart';
import 'package:test234/user_cubit.dart';

void main() {
  UserCubit userCubit = UserCubit();
  runApp(MyApp(appRouter: AppRouter(userCubit: userCubit), userCubit: UserCubit(),));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  final UserCubit userCubit;


  MyApp({required this.appRouter, required this.userCubit});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => appRouter,
      child: BlocProvider<UserCubit>.value(
        value: userCubit,
        child: MaterialApp(
          onGenerateRoute: appRouter.onGenerateRoute,
        ),
      ) ,
    );
  }
}
