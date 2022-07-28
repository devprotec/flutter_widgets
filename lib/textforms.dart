import 'package:flutter/material.dart';

class TextForms extends StatelessWidget {
  const TextForms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextFormsStateful(),
    );
  }
}

class TextFormsStateful extends StatefulWidget {
  const TextFormsStateful({Key? key}) : super(key: key);

  @override
  State<TextFormsStateful> createState() => _TextFormsStatefulState();
}

class _TextFormsStatefulState extends State<TextFormsStateful> {
  final style = const TextStyle(
      fontWeight: FontWeight.bold, fontSize: 18, color: Colors.pink);
  final formKey = GlobalKey<FormState>();
  bool togglevisibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextFormFields Demo")),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: decoration("Email Address", "Enter your email", false),
                  style: style,
                  validator: ((value) {
                    if (!value!.contains("@") || !value.contains(".")) {
                      return "please enter valid email";
                    } else {
                      return null;
                    }
                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: togglevisibility,
                  decoration: decoration("password", "Enter your password", true),
                  style: style,
                  validator: ((value) {
                    if (value!.length < 6) {
                      return "password is too short";
                    } else {
                      return null;
                    }
                  }),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    _onFormSubmit();
                  },
                  child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )),
                )
              ],
            )),
      )),
    );
  }

  _onFormSubmit() {
    if (formKey.currentState!.validate()) {}
  }

  decoration(String labelText, String hintText, bool? isPassword) {
    return InputDecoration(
      suffixIcon: isPassword!
          ? IconButton(
              onPressed: () {
                setState(() {
                  togglevisibility = !togglevisibility;
                });
              },
              icon: Icon(
                  togglevisibility ? Icons.visibility_off : Icons.visibility))
          : null,
      hintText: hintText,
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.black54, fontSize: 16),
      enabledBorder: borders(Colors.blue),
      focusedBorder: borders(Colors.purple),
      errorBorder: borders(Colors.red),
    );
  }

  borders(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide:
            BorderSide(color: color, style: BorderStyle.solid, width: 3.0));
  }
}
