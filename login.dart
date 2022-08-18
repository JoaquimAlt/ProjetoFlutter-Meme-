import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  Widget _body() {
    return (SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: Image.network(
                'https://www.vagalume.com.br/yung-lixo/images/yung-lixo.jpg'),
          ),
          Container(
            height: 60,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    onChanged: (text) {
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: 'Usuário', border: OutlineInputBorder()),
                  ),
                  Container(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (text) {
                      senha = text;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: 'Senha', border: OutlineInputBorder()),
                  ),
                  Container(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Enviar',
                          textAlign: TextAlign.center,
                        )),
                    onPressed: () {
                      if (email == 'maluko57' && senha == '123') {
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print('não é o Joacas');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                      onSurface: Colors.blue,
                      elevation: 10,
                      shadowColor: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: const Color.fromARGB(255, 82, 82, 82),
        ),
        _body(),
      ],
    ));
  }
}
