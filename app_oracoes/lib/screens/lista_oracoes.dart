import 'package:app_oracoes/screens/oracao_page.dart';
import 'package:flutter/material.dart';

class ListOracoes extends StatelessWidget {
  const ListOracoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Card(
          child: ListTile(
            leading: const FlutterLogo(),
            title: const Text('Oração pela Manhã'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OracaoPage()));
            },
          ),
        ),
      ],
    ));
  }
}
