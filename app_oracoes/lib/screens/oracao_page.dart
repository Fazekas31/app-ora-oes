import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OracaoPage extends StatefulWidget {
  const OracaoPage({super.key});

  @override
  State<OracaoPage> createState() => _OracaoPageState();
}

class _OracaoPageState extends State<OracaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Oração pela Manhã',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Oh Deus, neste novo amanhecer, eu venho diantede Ti com um coração cheio de gratidão eesperança. Obrigado por mais um dia de vida, porcada novo começo e cada nova oportunidade quevocê me concede. Nesta manhã, Senhor, peço que Tu estejas comigoem todos os momentos do dia que está por vir Que Tua luz ilumine meu caminho, guiando-me emcada passo que eu der. Dá-me força e coragem para enfrentar os desafios que surgirem ao longo do dia. Que Tua paz encha meu coração, trazendo tranquilidade mesmo diante das adversidades. Ajuda-me a ser paciente e gentil com aqueles ao meu redor, espalhando amor e compaixão por onde eu passar. Que eu possa enxergar Tuas bênçãos em cada pequeno detalhe da vida e ser grato por elas. Capacita-me, ó Deus, a fazer a diferença neste mundo, seguindo Teus ensinamentos e praticando o amor ao próximo.  Que Tua presença esteja comigo hoje e sempre. Amém."',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
