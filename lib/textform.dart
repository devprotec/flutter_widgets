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
  String pass = "";
  String email = "";
  final _formKey = GlobalKey<FormState>();
  bool visible = true;

  final style = const TextStyle(
      fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600);

  decoration(String hinText, IconData iconData, bool isPassword) {
    return InputDecoration(
        suffix: isPassword
            ? IconButton(
                onPressed: (){
                  setState(() {
                    visible = !visible;
                  });
                },
                icon: visible
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility))
            : null,
        prefixIcon: Icon(
          iconData,
        ),
        hintText: hinText,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 3.0,
              style: BorderStyle.solid,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.green,
              width: 3.0,
              style: BorderStyle.solid,
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 3.0,
              style: BorderStyle.solid,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextFormField Demo")),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: decoration("Enter your email", Icons.email, false),
                    onChanged: (newEmail) => email = newEmail,
                    validator: (value) {
                      if (!value!.contains("@") || !value.contains(".")) {
                        return "please enter correct email";
                      } else {
                        return null;
                      }
                    },
                    style: style,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      decoration:
                          decoration("Enter password", Icons.password, true),
                      style: style,
                      onChanged: (newPass) => pass = newPass,
                      validator: (value) {
                        if (value!.length <= 6) {
                          return "password must be greater than 6 characters";
                        } else {
                          return null;
                        }
                        
                      },
                      obscureText: visible,
                      ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: (() => _onSubmit()),
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  _onSubmit() {
    if (_formKey.currentState!.validate()) {}
  }
}
