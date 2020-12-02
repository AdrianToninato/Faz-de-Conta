import 'package:faz_de_conta/classes/AppRoutes.dart';
import 'package:flutter/material.dart';

class PageBusc extends StatefulWidget {
  @override
  _PageBuscState createState() => _PageBuscState();
}

class _PageBuscState extends State<PageBusc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    'Buscador',
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




            
            // espaçamento
            SizedBox(
              height: 5,
            ),


          // Search input
            Container(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width:  275,
                        height: 65,
                        child: TextField( 
                                controller: null,                              
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration( 
                                  labelText: 'Nome da História',
                                  labelStyle: TextStyle(color: Colors.black54,),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide(
                                      color:  Color(0xFF6E04D8),
                                      width: 1.0,
                                      ),
                                  ),
                                ),
                                style: TextStyle(color: Colors.black),
                              ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child:  FlatButton(
                          onPressed: (){}, 
                          child: Container( 
                            width: 85,
                            height: 65,
                            decoration: BoxDecoration(
                              color: Color(0xFF6E04D8),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Image.asset(
                                'assets/icons/search-white.png',
                                 width: 10,
                                 ),
                            ),
                          ),
                          ),
                    ),





                  ],
                ),
              ),
            ),

            // espaçamento
            SizedBox(
              height: 5,
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

            Image.asset(
              'assets/img/manutencao_app.jpg',
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              semanticLabel:
                  "mensagem que informa que a página esta em manutenção ",
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
                'assets/icons/home-white.png',
                width: 35,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed(AppRoutes.BUSCADOR_PAGE);
              },
              child: Image.asset(
                'assets/icons/search-yellow.png',
                width: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
