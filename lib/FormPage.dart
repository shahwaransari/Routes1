import 'package:flutter/material.dart';
import 'package:flutter_application_7/Route.dart';
import 'Profile.dart';
import 'route.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final  regexp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  bool hidinPassword = true;
  final _formKey = GlobalKey<FormState>(); 
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Form Page"),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (String?value ){
                  if(value == ""){
                    return "Please Enetr your Email";
                    
                  }else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value!)){
                      return  "Please Enter Valid Email";
                    }
                  else{
                    return null;
                  }
                },
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  label: Text("Email"),  
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
              ),
              SizedBox(
                 height: 20,
              ),
              TextFormField(
                validator: (String? value){
                  if(value == ""){
                    return "Please Enter Your Password";
                  }else if (passwordController.text.length < 6){
                    return "Password length should Be 6 diigits";
                  }else{
                    return null;
                  }

                },
                obscureText: hidinPassword,
                controller: passwordController,
              decoration:InputDecoration(
                prefixIcon: Icon(Icons.lock),
                label: Text("Password"),
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      hidinPassword = !hidinPassword;
                    });
                  },
                  child: Icon(
                    Icons.visibility
                  ),
                ) ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height:40,
                width: 400.0,
                // color: Colors.blue,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context, Routes.profile,
                    );
                    _formKey.currentState!.validate();
                  },
                  child: Text("Loging"),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}