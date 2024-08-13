import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:port_folio_app/widgets/detail_box.dart';
import 'package:port_folio_app/view/LoginPage.dart';
import 'package:http/http.dart' as http;


class Signup extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
final Url="https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyBWiXYgRVMsXU4zkM2qsb7x386pNyBBsyg";
Future<void>SignUp()async {
  final email = emailController.text;
  final pass=passwordController.text;
  print(email);
  final res=await http.post(Uri.parse(Url),
  body:json.encode(
    {
      "email":email,
      "password":pass,
      "returnSecureToken":true,
    }
  ));
  print(res.statusCode);
}
void Clear(){
  nameController.clear();
  emailController.clear();
  passwordController.clear();

}
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.20,child: Padding(
              padding: const EdgeInsets.only(top:110,left: 20),
              child: Text("SIGNUP",style:TextStyle(
              fontSize:35,
              fontWeight:FontWeight.w600,
              color:Color(0xff6A33FF),
                letterSpacing: 1
                      ),),
            ),),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 230,
                child: SvgPicture.asset("assets/Icons/login1.svg"),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DetailBox(
                          text: "Enter Your Name",
                          icons: Icons.person,
                          controller: nameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your name";
                            }
                            return null;
                          },
                          obscureText: false.obs,
                        ),
                        SizedBox(height: 10),
                        DetailBox(
                          text: "Enter Your Email",
                          icons: Icons.email_outlined,
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your email";
                            } else if (!RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$').hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                          obscureText: false.obs,
                        ),
                        SizedBox(height: 10),
                        DetailBox(
                          text: "Enter Your Password",
                          visibility: true,
                          icons: Icons.password,
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 characters long';
                            }
                            return null;
                          },
                          obscureText: true.obs,
                        ),
                        SizedBox(height: 23),
                        GestureDetector(
                          onTap: () {
                           if (formKey.currentState?.validate() ?? false) {
                                 SignUp();
                                 Clear();
                              Get.snackbar(
                                "",
                                "",
                                titleText: Text(
                                  "Account Created",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                messageText: Text(
                                  "Please Login Your Account",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                snackPosition: SnackPosition.TOP,
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                borderRadius: 30,
                                margin: EdgeInsets.all(10),
                                duration: Duration(milliseconds: 2000),
                                animationDuration: Duration(milliseconds: 2000),
                                backgroundColor: Colors.grey.shade800
                              );
                            }
                          },
                          child: Center(
                            child: Container(
                              height: 60,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Color(0xff6A33FF),
                                borderRadius: BorderRadius.circular(29),
                              ),
                              child: Center(
                                child: Text(
                                  "SignUp",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Have an account?",
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                Get.to(LoginPage());
                              },
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xff6A33FF),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //SizedBox(height: height * 0.10),
          ],
        ),
    );
  }
}
