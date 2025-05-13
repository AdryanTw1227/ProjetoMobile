import 'package:flutter/material.dart';
import 'package:untitled/pages/register.dart';
import 'package:untitled/pages/Home.dart';

class Login extends StatelessWidget {
  Login({super.key});
  String email = '';
  String passw = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [
                        Colors.lightGreenAccent,
                        Color.fromRGBO(102, 225, 170, 1),
                        Color.fromRGBO(0, 168, 107, 1),
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 60),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Login!",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 40)),
                            SizedBox(height: 20),
                            Text("Bem-vindo de Volta!",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(30),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SizedBox(height: 40),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(107, 177, 112, .4),
                                        blurRadius: 20,
                                        offset: Offset(0, 10),
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Color.fromRGBO(0, 0, 0, .2)),
                                          ),
                                        ),
                                        child: TextFormField(
                                          onChanged: (text) {
                                            email = text;
                                          },
                                          decoration: InputDecoration(
                                            hintText: "Email ou Telefone",
                                            hintStyle: TextStyle(color: Colors.grey),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.white38)),
                                        ),
                                        child: TextField(
                                          onChanged: (text) {
                                            passw = text;
                                          },
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            hintText: "Senha",
                                            hintStyle: TextStyle(color: Colors.grey),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 40),
                                Text("Esqueceu a Senha?",
                                    style: TextStyle(color: Colors.grey)),
                                TextButton(
                                  onPressed: () {
                                    // Lógica para redirecionar
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => Register()),
                                    );
                                  },
                                  child: Text(
                                      "Caso não tenha conta, cadastre-se aqui.",
                                      style: TextStyle(color: Colors.grey)),
                                ),
                                SizedBox(height: 50),
                                InkWell(
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: () {
                                    if (email.isNotEmpty && passw.isNotEmpty) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => Home()),
                                      );
                                    } else if (email.isEmpty && passw.isEmpty) {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text('Atenção'),
                                            content: Text('Por favor, preencha os campos de email e senha antes de continuar.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text('OK'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }
                                    // Caso apenas um dos campos esteja vazio, não faz nada
                                  },
                                  child: Container(
                                    height: 50,
                                    margin: EdgeInsets.symmetric(horizontal: 70),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color.fromRGBO(102, 225, 170, 0.9),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Continue",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 40),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                          border: Border.all(width: .59),
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text("Google",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 50),
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.blue,
                                        ),
                                        child: Center(
                                          child: Text("Facebook",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
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
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
