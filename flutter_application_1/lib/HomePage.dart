// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.close_sharp,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Cuenta de ",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    "Google",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(top: 12, right: 10),
                child: Icon(
                  Icons.help_outline_sharp,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 13, right: 10),
                child: Icon(
                  Icons.search_rounded,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, right: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/image2.jpg'),
                  radius: 13,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 247, 200, 230),
              child: TabBar(
                isScrollable: false,
                indicatorColor: const Color.fromARGB(255, 0, 0, 0),
                indicatorWeight: 4,
                labelStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0)),
                onTap: (index) {
                  setState(() {});
                },
                tabs: const [
                  Tab(
                    text: "Pagina Principal",
                  ),
                  Tab(
                    text: "Informacion Personal",
                  ),
                  Tab(
                    text: "Datos y Privacidad",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  const Homepage2(),
                  Container(
                    color: Colors.black,
                    child: const Center(
                        child: Text(
                      "Contenido de la Pagina Principal",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  Container(
                    color: Colors.black,
                    child: const Center(
                        child: Text(
                      "Contenido de la Pagina Principal",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Homepage2 extends StatelessWidget {
  const Homepage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tu cuenta esta Protegida",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "La Verificacion de seguridad\nreviso tu cuenta y no encontro\nacciones recomendadas",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Ver detalles",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "assets/images/image1.png",
                              height: 130,
                              width: 130,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 0, 0, 0),
              height: 10,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Verificacion de Privacidad",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Elige la configuracion de\nPrivacidad indicada por ti con\nesta guia de paso a paso",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Realizar la Verificacion de Privacidad",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "assets/images/image2.png",
                              height: 130,
                              width: 130,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 0, 0, 0),
              height: 10,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "¿Buscas otra Informacaion?",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.search_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Buscar en la Cuenta de Google",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(width: 100),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.help_outline_sharp,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Ver las Opciones de Ayuda",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(width: 125),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Enviar Comentarios",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(width: 168),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 0, 0, 0),
              height: 10,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Solo tu puedes ver la configuracion.\nTambien puedes revisar la configuracion\nde Maps, busquedad o cualquier servicio\nde Google que uses con frecuencia.\nGoogle protege la proivacidad y la\nseguridad de tus datos.",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                "Mas Informacion",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.help_outline,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "assets/images/image2.png",
                              height: 130,
                              width: 130,
                            ),
                          ),
                          Positioned(
                            right: 1,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}
