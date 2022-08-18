import 'package:flutter/material.dart';
import 'package:primeiro_app/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  bool isDartTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      'https://pbs.twimg.com/media/EDzlu5TXoAAPuXe.jpg'),
                ),
                accountName: const Text('Joaquim Gostosão'),
                accountEmail: const Text('joaquimferreira1818@gmail.com')),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              subtitle: const Text('tela de inicio'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Sair'),
              subtitle: const Text('Desabilitado'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            const ListTile(
              leading: CustomSwitch(),
              title: Text('Modo Noturno'),
              subtitle: Text('Habilitar Modo Noturno'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Você apertou o botão $counter vezes'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartTheme,
        onChanged: (value) {
          setState(() {
            AppController.instance.changeTheme();
          });
        });
  }
}
