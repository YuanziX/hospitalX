import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospitalx/app/core/utils/helper.dart';
import 'package:hospitalx/app/pages/login_page/cubit/login_page_cubit.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(143, 148, 251, .2),
                    blurRadius: 20,
                    offset: Offset(0, 0))
              ]),
          width: Helper.getScreenWidth(context) * 0.75,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade200),
                  ),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FluentIcons.person_16_filled),
                    label: Text('Name'),
                    hintText: 'Enter your name',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade200),
                  ),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FluentIcons.mail_16_filled),
                    label: Text('Email'),
                    hintText: 'Enter your email',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FluentIcons.password_16_filled),
                    label: Text('Password'),
                    hintText: 'Enter password',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            backgroundColor: MaterialStatePropertyAll(
                Theme.of(context).colorScheme.primaryContainer),
          ),
          onPressed: () {},
          child: SizedBox(
            width: Helper.getScreenWidth(context) * 0.535,
            height: 50,
            child: const Center(
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Already registered?'),
            TextButton(
                onPressed: BlocProvider.of<LoginPageCubit>(context).toggleLogin,
                child: const Text('Log in'))
          ],
        ),
      ],
    );
  }
}
