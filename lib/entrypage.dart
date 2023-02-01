import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Personal_info extends StatelessWidget {
  const Personal_info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 50,
              backgroundColor: Colors.green,
            ),
            Text("Pablo Escobar Gaviria",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Text("In 1976, Escobar founded the Medellín Cartel, which distributed powder "
                "cocaine, and established the first smuggling routes from Peru, Bolivia and Ecuador, "
                "through Colombia and eventually into the United States. Escobar's infiltration into the U.S. "
                "created exponential demand for cocaine and by the 1980s it was estimated Escobar led monthly shipments of 70 to 80 tons of cocaine into the country from Colombia. As a result, he quickly became one of the richest people in the world,[3][4] but constantly battled rival cartels domestically and abroad, "
                "leading to massacres and the murders of police officers, judges, locals, and prominent politicians,[5] making Colombia the murder capital of the world.",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextButton(onPressed: (){
                FirebaseAuth.instance.signOut();
              },
                  child:Text("Sign out")),

            )
          ],
        ),
      ),
    );
  }
}
