import 'package:flutter/material.dart';

class CustomTextInput extends StatefulWidget {
  const CustomTextInput({
    Key? key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.password = false,
  }) : super(key: key);

  final String title;
  final String hintText;
  final TextEditingController controller;
  final bool password;

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  late bool showPassword;

  @override
  void initState() {
    showPassword = !widget.password;
    super.initState();
  }

  void _togglePassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.title), // Company Label
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey),
              hintText: widget.hintText,
              border: InputBorder.none,
              focusColor: null,
              suffixIcon: widget.password
                  ? IconButton(
                      splashRadius: 1,
                      onPressed: _togglePassword,
                      icon: Icon(
                        showPassword ? Icons.visibility : Icons.visibility_off,
                      ),
                      color: Colors.grey,
                      iconSize: 20,
                    )
                  : null,
            ),
            obscureText: !showPassword,
          ),
        ),
      ],
    );
  }
}
