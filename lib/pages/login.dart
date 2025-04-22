import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Faz o fundo com degrade.
          body:Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.lightGreenAccent,
                    Color.fromRGBO(102, 225, 170, 1),
                    Color.fromRGBO(0, 168, 107, 1),
                  ]
              ),
            ),
            ///Adicionar o texto indicativo de login
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 60,),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Login!", style: TextStyle(color: Colors.black, fontSize: 40)),
                      SizedBox(height:20),
                      Text("Bem-vindo de Volta!", style: TextStyle(color: Colors.black, fontSize: 18),),
                    ],
                  ),
                ),
                ///Criar á area branca pra inserir os botoes e a parte de adicionar informações
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                    ),
                    ///Cria a sombra pra caixa de informação de login
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 40),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow
                                (color: Color.fromRGBO(107, 177, 112, .4),
                                blurRadius: 20,
                                offset: Offset(0, 10)
                              )],
                            ),
                            ///Cria a caixa para inserir o Email
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Color.fromRGBO(0,0, 0, .2))),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Email ou Telefone",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                ///Cria a caixa para inserir a senha
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.white38))
                                  ),
                                  child: TextField(
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
                          ///Cria o texto para redirecionar para a troca de senha ou fazer o cadastro
                          SizedBox(height: 40,),
                          Text("Esqueceu a Senha?", style: TextStyle(color: Colors.grey),),
                          Text("Caso nao tenha conta, cadastre-se aqui.", style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 50,),
                          Container(
                            height:50,
                            margin: EdgeInsets.symmetric(horizontal: 70),
                            decoration: BoxDecoration(
                              borderRadius:  BorderRadius.circular(50),
                              color: Color.fromRGBO(102, 225, 170, 0.9),
                            ),
                            child: Center(
                              child: Text("Login", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(height: 40,),
                          SizedBox(height: 40,),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: .59),
                                    borderRadius:  BorderRadius.circular(50),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Text("Google", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                                  )
                                ),
                              ),
                              SizedBox(width: 50,),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius:  BorderRadius.circular(50),
                                    color: Colors.blue,
                                  ),
                                    child: Center(
                                      child: Text("Facebook", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                                    )
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
      );
  }
}