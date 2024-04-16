import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key,});

    @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
                child:
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                                child: Image(
                                image: NetworkImage('https://www.umayor.cl/um/bundles/umayor/images/header-logo.png'),
                                width: 200.0,
                                height: 50.0,
                                ),
                              )
                            ],   
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0, top: 20.0),
                        child: RichText(
                          text: const TextSpan(
                            text: 'Campus / SEDES Y CAMPUS',                                
                            style: TextStyle(
                            color: Color.fromARGB(255, 100, 100, 100),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500
                            ),
                          ),
                        )
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'SEDES Y CAMPUS',                                
                          style: TextStyle(
                            color: Color.fromARGB(255, 66, 66, 66),
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 192, 192, 192),
                        thickness: 2.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: 
                          RichText(
                            text: const TextSpan(
                              text: 'Conoce los 10 campus de la U. Mayor, en sus ',
                              style: TextStyle(
                                color: Color.fromARGB(255, 66, 66, 66),
                                fontWeight: FontWeight.normal,
                                fontSize: 16.0,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'sedes Santiago y Temuco. ',),
                                TextSpan(text: 'Revisa el Tour\n', style: TextStyle(fontWeight: FontWeight.bold),),
                                TextSpan(text: 'Virtual que te llevara en un viaje por cada\n',style: TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: 'parte de la Universidad.', style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 30.0, bottom: 0.0, right: 30.0),
                          child: Image(
                            image: NetworkImage('https://www.umayor.cl/um/bundles/umayor/images/universidad/campus-web/campus-huechuraba.jpg'),
                          ),
                          )  
                      ],
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 90),
                        child: Text(
                          'Campus Huechuraba',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 30.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 220, 220, 220),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 110, 110, 110),
                          ),
                        ),
                      ),
                    ),
                  ],  

              ),  
              Stack(
                  children: [
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 30.0, bottom: 0.0, right: 30.0),
                          child: Image(
                            image: NetworkImage('https://www.umayor.cl/um/bundles/umayor/images/universidad/campus-web/campus-manuelmontt.jpg'),
                          ),
                        ),  
                      ],
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 90),
                        child: Text(
                          'Campus Manuel Montt',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 30.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 220, 220, 220),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 110, 110, 110),
                          ),
                        ),
                      ),
                    ),
                  ],  
              ),  
            ],
          )
        ),
        Positioned(
          right: 10.0,
          top: 0,
          child: PopupMenuButton(
            icon: const Icon(Icons.menu),
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: 'sergio',
                child: Text('Sergio'),
              ),
              const PopupMenuItem(
                value: 'error',
                child: Text('Error Screen'),
              ),
              const PopupMenuItem(
                value: 'salir',
                child: Text('Salir de la aplicación'),
              ),
            ],
            onSelected: (value) {
              if (value == 'sergio') {
                Navigator.pushNamed(context, 'sergio_intro');
              }
              if (value == 'error') {
                Navigator.pushNamed(context, 'error_screen');
              } 
              if (value == 'salir') {
                Navigator.pop(context);
              }
              else {
              }
            },
          ),
        ),
      ],
    );
  }
}


