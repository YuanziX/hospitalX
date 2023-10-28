import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospitalx/app/core/utils/helper.dart';
import 'package:hospitalx/app/pages/login_page/cubit/login_page_cubit.dart';
import 'package:hospitalx/app/pages/login_page/widgets/login_form.dart';
import 'package:hospitalx/app/pages/login_page/widgets/signup_form.dart';

class LoginPageProvider extends StatelessWidget {
  const LoginPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginPageCubit(),
      child: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: Helper.getScreenHeight(context) * 0.4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/login_image.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Hospital Companion App',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            const SizedBox(
              height: 24,
            ),
            BlocBuilder<LoginPageCubit, LoginPageState>(
              builder: (context, state) {
                if (BlocProvider.of<LoginPageCubit>(context).isLogin) {
                  return const LoginForm();
                } else {
                  return const SignupForm();
                }
              },
            ),
          ]),
        ),
      ),
    );
  }
}
