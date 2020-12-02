import 'package:faz_de_conta/classes/AppRoutes.dart';
import 'package:flutter/material.dart';

class PageConfig extends StatefulWidget {
  @override
  _PageConfigState createState() => _PageConfigState();
}


class _PageConfigState extends State<PageConfig> {
  bool valor = true;
   bool valor2 = true;
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
                      'Configurações',
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

            Padding(
              padding: EdgeInsets.all(5.0),
              child: Form(
                child: Column(
                  children: [

          
                   CheckboxListTile(
                      title: const Text('Notificações'),
                      value:  valor,
                      onChanged: (bool value) {
                        setState(() {
                          valor = value;
                        });
                      },
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  CheckboxListTile(
                      title: const Text('Vibração'),
                      value: valor2,
                      onChanged: (bool value) {
                        setState(() {
                          valor2 = value;
                        });
                      },
                  ),



                    
                  ],
                ),
              ),
            )
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
                'assets/icons/config-yellow.png',
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

