import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {

  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  void dispose(){
    email.dispose();
    password.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(children: [
        Container(
          width: double.maxFinite,height: double.maxFinite,
          decoration: BoxDecoration(
            image:DecorationImage(image: AssetImage("images/fire.jpg",),
                fit: BoxFit.cover
            ),

          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  suffixIcon: Icon(Icons.email),
                  label: Text("Email"),
                  fillColor: Colors.yellow,filled: true,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  label: Text("Password"),
                  filled: true,fillColor: Colors.yellow,
                ),
              ),
            ),
            SizedBox(height: 20,),

            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextButton(onPressed: (){
                signIn();
              },
                  child:Text("Sign up")),

            )

          ],
        )
      ],

      );
  }

  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.text.trim(),
      password:password.text.trim(),
    );
  }
}
