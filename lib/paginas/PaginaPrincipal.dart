import 'package:faz_de_conta/classes/AppRoutes.dart';
import 'package:flutter/material.dart';

class PagePrincipal extends StatefulWidget {
  @override
  _PagePrincipalState createState() => _PagePrincipalState();
}

class _PagePrincipalState extends State<PagePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            // Parte com o titulo
            Container(
              height: MediaQuery.of(context).size.height*0.15,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFF6E04D8),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0.0, 0.1),
                    child: Text(
                      'Histórias',
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


          //Corpo da aplicação
          
          Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),

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

                    // espaçamento
                    SizedBox(
                      height: 20,
                    ),

                    //segundo card de botão
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.HISTORIA_PAGE_DOIS,
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFE9474C),
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
                                    'assets/img/menina_lendo.png',
                                    width: 114.0,
                                    height: 105.0,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.7, 0.0),
                              child: Text(
                                'História 02',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                     // espaçamento
                    SizedBox(
                      height: 20,
                    ),

                    //terceiro card de botão
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.HISTORIA_PAGE_TRES,
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF8244BF),
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
                                    'assets/img/ilustra_placeholder.png',
                                    width: 114.0,
                                    height: 105.0,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.7, 0.0),
                              child: Text(
                                'História 03',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // espaçamento
                    SizedBox(
                      height: 20,
                    ),

                     //primeiro card da primeira história repitido para teste de layout
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

                    // espaçamento
                    SizedBox(
                      height: 20,
                    ),

                    //segundo card de botão repitido para teste de layout
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.HISTORIA_PAGE_DOIS,
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFE9474C),
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
                                    'assets/img/menina_lendo.png',
                                    width: 114.0,
                                    height: 105.0,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.7, 0.0),
                              child: Text(
                                'História 02',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                     // espaçamento
                    SizedBox(
                      height: 20,
                    ),

                    //terceiro card de botão repitido para teste de layout
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.HISTORIA_PAGE_TRES,
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF8244BF),
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
                                    'assets/img/ilustra_placeholder.png',
                                    width: 114.0,
                                    height: 105.0,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.7, 0.0),
                              child: Text(
                                'História 03',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
          
            
          ],
        ),
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
                'assets/icons/user-white.png',
                width: 35,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed(AppRoutes.PRINCIPAL_PAGE);
              },
              child: Image.asset(
                'assets/icons/home-yellow.png',
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
