import 'package:faz_de_conta/classes/AppRoutes.dart';
import 'package:flutter/material.dart';

class PagePerfil extends StatefulWidget {
  @override
  _PagePerfilState createState() => _PagePerfilState();
}

class _PagePerfilState extends State<PagePerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          // Parte com o titulo
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFF6E04D8),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.0, 0.1),
                  child: Text(
                    'Perfil',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),



          //espaçamento
          SizedBox(
            height: 20,
          ),

         //conteudo da página
          SingleChildScrollView(
            child: Column(
              children: [
                 //primeiro card da primeira história
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.HISTORIA_PAGE,
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF2CB04),
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.6),
                          offset: Offset(1.0, 2.0),
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Opacity(
                              opacity: 0.7,
                              child: Image.asset(
                                'assets/img/menino_no_livro.png',
                                width: 114.0,
                                height: 105.0,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.7, 0.0),
                          child: Text(
                            'História 01',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.95, 0.9),
                          child: Container(
                            child: Image.asset(
                              'assets/icons/check.png',
                              width: 23,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),




        ],
      ),
       bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              offset: Offset(2.0, 3.0),
              blurRadius: 10.0,
            ),
          ],
          color: Color(0xFF6E04D8),
        ),
        padding: EdgeInsets.only(left: 2.5, right: 2.5),
        child: Row(
          children: [
            FlatButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed(AppRoutes.CONFIG_PAGE);
              },
              child: Image.asset(
                'assets/icons/config-white.png',
                width: 35,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed(AppRoutes.PERFIL_PAGE);
              },
              child: Image.asset(
                'assets/icons/user-yellow.png',
                width: 35,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed(AppRoutes.PRINCIPAL_PAGE);
              },
              child: Image.asset(
                'assets/icons/home-white.png',
                width: 35,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed(AppRoutes.BUSCADOR_PAGE);
              },
              child: Image.asset(
                'assets/icons/search-white.png',
                width: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
