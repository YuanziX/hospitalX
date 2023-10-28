import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_page_state.dart';

class LoginPageCubit extends Cubit<LoginPageState> {
  bool isLogin = true;
  LoginPageCubit() : super(LoginPageState.initial());

  void toggleLogin() {
    isLogin = !isLogin;
    emit(state.copyWith(status: LoginStatus.initial));
  }

  void switchUserType() {
    emit(state.copyWith(
        userType: state.userType == UserType.doctor
            ? UserType.patient
            : UserType.doctor));
  }

  String get userTypeString {
    return state.userType == UserType.doctor ? 'Doctor' : 'Patient';
  }
}
