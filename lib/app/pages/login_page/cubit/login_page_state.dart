part of 'login_page_cubit.dart';

enum LoginStatus {
  initial,
  loading,
  success,
  failure,
}

class LoginPageState {
  final String name;
  final String email;
  final String password;
  final LoginStatus status;

  const LoginPageState({
    required this.name,
    required this.email,
    required this.password,
    required this.status,
  });

  factory LoginPageState.initial() => const LoginPageState(
        name: '',
        email: '',
        password: '',
        status: LoginStatus.initial,
      );

  LoginPageState copyWith({
    String? name,
    String? email,
    String? password,
    LoginStatus? status,
  }) {
    return LoginPageState(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }
}
