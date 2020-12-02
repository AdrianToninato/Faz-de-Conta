import 'package:flutter/material.dart';

class PageHistoriaDois extends StatefulWidget {
  @override
  _PageHistoriaDoisState createState() => _PageHistoriaDoisState();
}



class _PageHistoriaDoisState extends State<PageHistoriaDois> {
  PageController controller =
      PageController(initialPage: 0, keepPage: false);
  int i = 0;

  List<String> texts = [
    'Esta é a página 1, abaixo segue lorem ipsum: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus sed tellus ac pulvinar. Duis eget viverra diam. Nam quis tempus velit, ut porta est. In nulla velit, accumsan sed lacinia eget, bibendum mattis ligula. Sed tempor erat nulla, nec cursus turpis dictum a. Quisque euismod eu est eget feugiat. Curabitur placerat nibh tellus, vitae tristique augue blandit at.',
    
    'Esta é a página 2, abaixo segue lorem ipsum: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus sed tellus ac pulvinar. Duis eget viverra diam. Nam quis tempus velit, ut porta est. In nulla velit, accumsan sed lacinia eget, bibendum mattis ligula. Sed tempor erat nulla, nec cursus turpis dictum a. Quisque euismod eu est eget feugiat. Curabitur placerat nibh tellus, vitae tristique augue blandit at.',

    'Esta é a página 3, abaixo segue lorem ipsum: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus sed tellus ac pulvinar. Duis eget viverra diam. Nam quis tempus velit, ut porta est. In nulla velit, accumsan sed lacinia eget, bibendum mattis ligula. Sed tempor erat nulla, nec cursus turpis dictum a. Quisque euismod eu est eget feugiat. Curabitur placerat nibh tellus, vitae tristique augue blandit at.',
    
    'Esta é a página 4, abaixo segue lorem ipsum: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus sed tellus ac pulvinar. Duis eget viverra diam. Nam quis tempus velit, ut porta est. In nulla velit, accumsan sed lacinia eget, bibendum mattis ligula. Sed tempor erat nulla, nec cursus turpis dictum a. Quisque euismod eu est eget feugiat. Curabitur placerat nibh tellus, vitae tristique augue blandit at.',

    'Esta é a página 5, abaixo segue lorem ipsum: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus sed tellus ac pulvinar. Duis eget viverra diam. Nam quis tempus velit, ut porta est. In nulla velit, accumsan sed lacinia eget, bibendum mattis ligula. Sed tempor erat nulla, nec cursus turpis dictum a. Quisque euismod eu est eget feugiat. Curabitur placerat nibh tellus, vitae tristique augue blandit at.',

    'Esta é a página 6, abaixo segue lorem ipsum: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus sed tellus ac pulvinar. Duis eget viverra diam. Nam quis tempus velit, ut porta est. In nulla velit, accumsan sed lacinia eget, bibendum mattis ligula. Sed tempor erat nulla, nec cursus turpis dictum a. Quisque euismod eu est eget feugiat. Curabitur placerat nibh tellus, vitae tristique augue blandit at.',

    'vai ter a imagem nessa página',

    'Esta é a página 8, abaixo segue lorem ipsum: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus sed tellus ac pulvinar. Duis eget viverra diam. Nam quis tempus velit, ut porta est. In nulla velit, accumsan sed lacinia eget, bibendum mattis ligula. Sed tempor erat nulla, nec cursus turpis dictum a. Quisque euismod eu est eget feugiat. Curabitur placerat nibh tellus, vitae tristique augue blandit at.',

    'Esta é a página 9, abaixo segue lorem ipsum: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus sed tellus ac pulvinar. Duis eget viverra diam. Nam quis tempus velit, ut porta est. In nulla velit, accumsan sed lacinia eget, bibendum mattis ligula. Sed tempor erat nulla, nec cursus turpis dictum a. Quisque euismod eu est eget feugiat. Curabitur placerat nibh tellus, vitae tristique augue blandit at.',

    'Esta é a página 10, abaixo segue lorem ipsum: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus sed tellus ac pulvinar. Duis eget viverra diam. Nam quis tempus velit, ut porta est. In nulla velit, accumsan sed lacinia eget, bibendum mattis ligula. Sed tempor erat nulla, nec cursus turpis dictum a. Quisque euismod eu est eget feugiat. Curabitur placerat nibh tellus, vitae tristique augue blandit at.',
  ];
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: SafeArea(
          child: Stack(
            children: <Widget>[
             
              // Parte com o titulo
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFE9474C),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
              ),
              child: Stack(
                children: [
                  

                  Align(
                    alignment: Alignment(-0.2, 0.1),
                    child: Text(
                      'História 02',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        shadows: [
                                      Shadow(
                                          blurRadius: 5.0,
                                          color: Colors.black45,
                                          offset: Offset(3.0, 3.0),
                                          ),
                                    ],
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(1.0, 0.1),
                    child: Opacity(
                      opacity: 0.2,
                      child: Image.asset(
                                    'assets/img/menina_lendo.png',
                                    width: 105.0,
                                    height: 105.0,
                                  ),
                    ),
                  ),

                ],
              ),
            ),



          //conteudo com texto
            PageView.builder(
                onPageChanged: (val) {
                  setState(() {
                    i = val;
                  });
                },
                controller: controller,
                itemCount: texts.length,
                itemBuilder: (BuildContext context, position) {
                  return Container(
                    padding: EdgeInsets.only( left: 15.0, right: 15.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          i == 6
                          ?Image(
                            image: AssetImage('assets/img/menina_lendo.png'),
                            width: MediaQuery.of(context).size.width,
                          )
                          :Text(
                            '${texts[position]}',
                            style: TextStyle(
                            fontSize: 18.0,
                          ),

                          ),
                          
                        
                        ],
                      ),
                    ),
                  );
                }),
             
             
             
             
             
     


              //icone de setinha para retorno
               Align(
              alignment: Alignment(-0.99, -0.9),
              child: FlatButton(
                    onPressed: (){
                        Navigator.of(context).pop();
                      },
                    child:  Image.asset(
                                  'assets/icons/left-arrow-white.png',
                                  width: 25.0,
                                  height: 25.0,
                                ),

                  ),
            ),






            ],
          ),
        ),

         bottomSheet: Container(
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
           child: Row(
                    children: <Widget>[

                      SizedBox(
                        width: 10,
                      ),

                       i > 0
                        ? FlatButton(
                            onPressed: () => controller.previousPage(
                              duration: Duration(milliseconds: 10),
                              curve: Curves.linear,
                            ),
                            child:Image.asset(
                              'assets/icons/left-arrow-green.png',
                                 width: 45,
                            ), 
                            
                          )
                        : SizedBox(
                          width: 87,
                        ),

                        SizedBox(
                          width: 10,
                        ),

                        Text(
                          'Página ${i+1}/${texts.length}',
                           style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                   shadows: [
                                      Shadow(
                                          blurRadius: 5.0,
                                          color: Colors.black45,
                                          offset: Offset(3.0, 3.0),
                                          ),
                                    ],
                                ),
                          
                        ),




                        SizedBox(
                          width: 10,
                        ),

                        i == texts.length-1
                        ? FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'FIM',
                      style: TextStyle(
                        color: Color(0xFF05F29A),
                        fontSize: 40.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'NerkoOne',
                      ),
                    ),
                  )
                  : FlatButton(
                            onPressed: () => controller.nextPage(
                              duration: Duration(milliseconds: 10),
                              curve: Curves.linear,
                            ),
                            child: Image.asset(
                              'assets/icons/right-arrow-green.png',
                                 width: 45,
                            ), 
                  ),









                    ],
                  ),
         ),

    );
  }
}