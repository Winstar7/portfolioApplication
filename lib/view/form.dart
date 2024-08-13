import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  _FormsState createState() => _FormsState();
}
class _FormsState extends State<Forms> {
  String firstName = "";
  String lastname = "";
  String email = "";
  String password = "";
  final formKey = GlobalKey<FormState>();
  trysubmit() {
    final isvalid = formKey.currentState!.validate();
    if (isvalid) {
      formKey.currentState!.save();
      submitform();
    } else {
      print('Error');
    }
  }
  submitform() {
    print(firstName);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: Theme.of(context).primaryColor,
                title: Center(
                    child: Text("FORMS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )))),
            body: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(hintText: "Enter First Name"),
                            key: ValueKey("FirstName"),
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return "FirstName Should not be empty";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              firstName = value.toString();
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Enter Last Name"),
                            key: ValueKey("Lastname"),
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return "LastName Should not be empty";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              lastname = value.toString();
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Enter Your Email"),
                            key: ValueKey("email"),
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return "Email Should not be empty";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              email = value.toString();
                            },
                          ),
                          TextFormField(
                            decoration:
                            InputDecoration(hintText: "Enter Your Password"),
                            key: ValueKey("password"),
                            validator: (value) {
                              if (value.toString().length <= 5) {
                                return "Minimum length of "
                                    "passwor Should be 5";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              password = value.toString();
                            },
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                              onPressed: () {
                                trysubmit();
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStatePropertyAll(Colors.yellow),
                                overlayColor: MaterialStatePropertyAll(Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                ))));
  }
}
