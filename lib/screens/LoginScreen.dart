import 'package:flutter/material.dart';
import 'package:phum_hr_clone/widgets/custom_elevated_button.dart';
import 'package:phum_hr_clone/widgets/custom_text_button.dart';
import 'package:phum_hr_clone/widgets/custom_text_input.dart';
import 'package:phum_hr_clone/widgets/custom_toggle_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtCompany = TextEditingController();
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 70,
                    bottom: 30,
                  ),
                  child: Center(
                    child: Image(
                      height: 50,
                      image: AssetImage("assets/images/logo.png"),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  title: "Company",
                  hintText: "Enter Company",
                  controller: txtCompany,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  title: "Username",
                  hintText: "Enter Username",
                  controller: txtUsername,
                ),
                const SizedBox(height: 20),
                CustomTextInput(
                  title: "Password",
                  hintText: "Enter Password",
                  controller: txtPassword,
                  password: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    title: "Forgot Password?",
                    onPressed: () {},
                  ),
                ),
                CustomElevatedButton(
                  title: "Login",
                  onPress: () {},
                ),
                const SizedBox(height: 50),
                const Center(
                  child: CustomToggleButton(
                    children: [
                      CustomToggleButtonItem(title: "English"),
                      CustomToggleButtonItem(title: "ភាសាខ្មែរ")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
