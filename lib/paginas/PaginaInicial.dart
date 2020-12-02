import 'package:faz_de_conta/classes/AppRoutes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/img/background_image.png',
              fit: BoxFit.cover, // Preencher tela inteira
              height: MediaQuery.of(context).size.height * 4 / 10,
              semanticLabel: "Imagem de fundo com desenhos infantis",
            ),
          ),




          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 8 / 10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFF6E04D8),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(85),
                  topLeft: Radius.circular(85),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 15.0,
                    offset: Offset(
                      3.0,
                      3.0,
                    ),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //logo

                  Image.asset(
                    'assets/img/logo_faz_de_conta.png',
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.3,
                    semanticLabel:
                        "Logo do aplicativo, apenas traço de um livro verde aberto ",
                  ),

                  //espaçamento
                  SizedBox(
                    height: 10,
                  ),

                  //TEXTO FAZ DE CONTA
                  Text(
                    'FAZ DE CONTA',
                    style: TextStyle(
                      color: Color(0xFF05F29A),
                      fontSize: 30.0,
                      fontFamily: 'NerkoOne',
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  // espaçamento

                  SizedBox(
                    height: 100,
                  ),

                  //botão
                  Container(
                    height: 60.0,
                    width: 140.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(1.0, 2.0),
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Semantics(
                      label: 'Botão, toque duplo para entrar',
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.PRINCIPAL_PAGE);
                        },
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(
                            color: Color(0xFF6E04D8),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // espaçamento

                  SizedBox(
                    height: 50,
                  ),
                  //texto dos direitos
                  Text(
                    'Todos os direitos reservados',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
