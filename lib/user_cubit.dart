import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserState(loggedIn: false));


  void grantPermission() => emit(
      UserState(loggedIn: true));

  void removePermission() => emit(UserState(loggedIn: false));
}
