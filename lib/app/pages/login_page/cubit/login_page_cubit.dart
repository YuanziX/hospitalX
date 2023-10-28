import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_page_state.dart';

class LoginPageCubit extends Cubit<LoginPageState> {
  bool isLogin = true;

  LoginPageCubit() : super(LoginPageState.initial());

  void toggleLogin() {
    isLogin = !isLogin;
    emit(state.copyWith(status: LoginStatus.initial));
  }
}
