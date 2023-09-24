import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                  width: 200,
                  height: 200,

                  child: Image.asset("assets/images/profile.jpg")
              ),
              const SizedBox(height: 20,),
              Text("Name : Fatma Abdelghany"),
              const SizedBox(height: 20,),


              Container(
                width:double.infinity ,
                child: ElevatedButton(
                      onPressed: (){},
                    // onPressed: ()=>context.go("/call"),
                    child: const Text(
                        "Call me"
                    )),
              )


            ],
          ),
        ),
      ),
    );
  }
}

