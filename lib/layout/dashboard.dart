import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/login_bloc.dart';

class WelcomeScreen extends StatelessWidget{
  final String sessionToken;
  WelcomeScreen({required this.sessionToken});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Welcome')),
      body: Center(
        child : Column(mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('welcome!'),
          Text('Session Token: $sessionToken'),
          ElevatedButton(
            onPressed:(){
              context.read<LoginBloc>().add(const ProsesLogout());
            },
            child:Text('Logout'),
          ),
        ],
        ),
        ),
      );
    
  }
}