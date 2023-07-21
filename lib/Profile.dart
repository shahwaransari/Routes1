import 'package:flutter/material.dart';

import 'package:flutter_application_7/Route.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 28, 45, 57),
      appBar: AppBar 
    (title:  
   const Text("Profile",style: TextStyle(color: Colors.white),),
    backgroundColor: Color.fromARGB(255, 3, 97, 8),
    
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            alignment:  Alignment.bottomRight,
            children: [
             CircleAvatar(
              backgroundImage: AssetImage("assets/virat.jpg"),
              backgroundColor: Colors.green,
              radius: 100,
              //child: Image.asset(" assets/ind.jpg"),
            ),
            
            Positioned(
              
              bottom: 20,
              child: CircleAvatar(
                child: Icon(Icons.camera),
              ),
            )
          ],
          ),
          Row(
            children: [
              const Icon(Icons.person),
              Column(
                children: [
                  Text("Name"),
                  Text("Shahwar"),
                  Text("This is not your username or pin"),
                ],
              ),
              const Icon(Icons.edit),
            ],
          ),
          SizedBox(
            height: 20,
          ),
           Row(
            children: [
              const Icon(Icons.info),
              Column(
                children: [
                  Text("About"),
                 
                  Text("Nothing "),
                ],
              ),
              const Icon(Icons.edit),
            ],
          ),
          SizedBox(
            height: 20,
          ),
           Row(
            children: [
              const Icon(Icons.phone),
              Column(
                children: [
                  Text("Phone"),
                 
                  Text("0336342152"),
                ],
              ),
              const Icon(Icons.edit),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(
                context, Routes.defaultRoute
              );
            },
            child: Text("Back Button")
          )
        ],
      ),
    ) ,
    );
  }
}