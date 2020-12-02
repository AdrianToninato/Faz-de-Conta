import 'package:faz_de_conta/classes/AppRoutes.dart';
import 'package:faz_de_conta/paginas/Buscador.dart';
import 'package:faz_de_conta/paginas/Config.dart';
import 'package:faz_de_conta/paginas/Historia.dart';
import 'package:faz_de_conta/paginas/HistoriaDois.dart';
import 'package:faz_de_conta/paginas/HistoriaTres.dart';
import 'package:faz_de_conta/paginas/PaginaInicial.dart';
import 'package:faz_de_conta/paginas/PaginaPrincipal.dart';
import 'package:faz_de_conta/paginas/Perfil.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Faz de Conta",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        AppRoutes.HOME_PAGE: (_) => HomePage(),
        AppRoutes.PRINCIPAL_PAGE: (_) => PagePrincipal(),
        AppRoutes.PERFIL_PAGE: (_) => PagePerfil(),
        AppRoutes.CONFIG_PAGE: (_) => PageConfig(),
        AppRoutes.BUSCADOR_PAGE: (_) => PageBusc(),
        AppRoutes.HISTORIA_PAGE: (_) => PageHistoria(),     
        AppRoutes.HISTORIA_PAGE_DOIS: (_) => PageHistoriaDois(),  
        AppRoutes.HISTORIA_PAGE_TRES: (_) => PageHistoriaTres(),
      },
    ),
  );
}
 
//ROXO PRINCIPAL DO APP - #6E04D8 - 0xFF6E04D8
//ROXO MAIS CLARO DO APP - #8244BF - 0xFF8244BF
//VERDE DO APP - #05F29A - 0xFF05F29A
//AMARELO DO APP - #F2CB04 - 0xFFF2CB04
//VERMELHO DO APP -  #E9474C -  0xFFE9474C
