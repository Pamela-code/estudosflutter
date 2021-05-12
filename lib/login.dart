import 'package:agendamento/main.dart';
import 'package:flutter/material.dart';
import 'package:agendamento/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'fonte',
        primaryColor: const Color(0xFF0e2a4a),
        accentColor: const Color(0xFF0e2a4a),
        canvasColor: const Color(0xFFdce3ed),
      
      ),
      home: Splash(),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFa4bad2),
      body: Center(
        
        
          
          child: Column(
            
        children: <Widget>[
          Container(
            height: 40,
           ),
          Container(
            width: 170,
            height: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Image(
                    image: AssetImage("assets/imagens/logo.png")
                    ),
                ),
              ],
            )
              ),
              Container(
                height: 40,
              ),
          SizedBox( width: 360,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                      fillColor: const Color(0xFFb4c6da),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    
                    labelText: "Email",
                  ),
                ),
                Container(
                  height: 10,
                ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFb4c6da),
                      border: OutlineInputBorder(
                        
                        borderSide: BorderSide.none,
                         borderRadius: BorderRadius.circular(30)
                      ),
                      labelText: "Senha",
                    ),
                  ),
              ], 
            ),
          ),
        Container(
          height: 25,
        ),

          ElevatedButton(
            
            style: ElevatedButton.styleFrom(
              textStyle: TextStyle(fontSize: 15),
              
              padding: EdgeInsets.symmetric(horizontal: 165, vertical: 25),
              shape: 
              
               RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),
                
                ),
              primary: const Color(0xFF0e2a4a),
            ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage()));
              },
              
              child: Text("Entrar",)
              )
        ],
      )),
    );
  }
}
