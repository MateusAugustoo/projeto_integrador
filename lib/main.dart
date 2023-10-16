import 'package:flutter/material.dart';
import 'package:projeto_integrador/views/anuncios/tela_anunio.dart';
import 'package:projeto_integrador/views/anuncios/tela_gera_anucio.dart';
import 'package:projeto_integrador/views/formaPagamento/adicionar_form_pagamento.dart';
import 'package:projeto_integrador/views/home/tela_home.dart';
import 'package:projeto_integrador/views/telaCadastro/tela_cadastro.dart';
import 'package:projeto_integrador/views/telaCarrinho/tela_carrinho.dart';
import 'package:projeto_integrador/views/telaEntrada/tela_entrada.dart';
import 'package:projeto_integrador/views/telaLogin/tela_login.dart';
import 'package:projeto_integrador/views/telaPerfil/tela_perfil.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Routes());
}

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/ScreenHome',
      routes: {
        '/': (context) => const TelaEntrada(),
        '/ScreenLogin': (context) => const TelaLogin(),
        '/ScreenCadastro': (context) => const TelaCadastro(),
        '/ScreenHome': (context) => const TelaHome(),
        '/ScreenAnuncio': (context) => const TelaAnuncio(),
        '/ScreenGeraAnuncio': (context) => const GeraAnucio(),
        '/ScreenCarrinho': (context) => const TelaCard(),
        '/ScreenPerfil': (context) => const TelaPerfil(),
        '/ScreenFormaPagamento': (context) => const AddFormaPagamento(),
      },
    );
  }
}
