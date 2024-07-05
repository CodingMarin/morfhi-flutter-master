import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: 80.0,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 173, 173, 173),
                              blurRadius: 4.0,
                              offset: Offset(1, 2)),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/8.png'),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Hogar",
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Container(
                    width: 80.0,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 173, 173, 173),
                              blurRadius: 4.0,
                              offset: Offset(1, 2)),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/4.png'),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Mascotas",
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 80.0,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 173, 173, 173),
                              blurRadius: 4.0,
                              offset: Offset(1, 2)),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/7.png'),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Estilo",
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Container(
                    width: 80.0,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 173, 173, 173),
                              blurRadius: 4.0,
                              offset: Offset(1, 2)),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/3.png'),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Educativa",
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 80.0,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 173, 173, 173),
                              blurRadius: 4.0,
                              offset: Offset(1, 2)),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/6.png'),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Envíos",
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Container(
                    width: 80.0,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 173, 173, 173),
                              blurRadius: 4.0,
                              offset: Offset(1, 2)),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/2.png'),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Reparacion",
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 90.0,
                    height: 80.0,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 173, 173, 173),
                              blurRadius: 4.0,
                              offset: Offset(1, 2)),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/5.png'),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Construcción",
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Container(
                    width: 80.0,
                    height: 80.0,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 173, 173, 173),
                              blurRadius: 4.0,
                              offset: Offset(1, 2)),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/1.png'),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Varios",
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )

          // child: LColor.fromARGB(255, 5, 12, 11)d(
          //   itemCount: 2,
          //   separatorBuilder: (context, index) => const SizedBox(height: 8),
          //   itemBuilder: (context, index) {
          //     return Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 10.0),
          //       child: Container(
          //         padding: const EdgeInsets.all(5),
          //         decoration: BoxDecoration(
          //             color: Colors.grey[100],
          //             border: Border.all(width: 1.0, color: Colors.grey),
          //             borderRadius: const BorderRadius.all(Radius.circular(5))),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Column(
          //                   children: [
          //                     Text(
          //                       'Titulo del Servicio',
          //                       style: TextStyle(
          //                           color: Colors.blue[800],
          //                           fontWeight: FontWeight.w700,
          //                           fontSize: 18.0),
          //                     ),
          //                     const Text('Descripcion del servicio')
          //                   ],
          //                 ),
          //                 const Icon(
          //                   MdiIcons.chevronRight,
          //                   color: Colors.grey,
          //                   size: 40.0,
          //                 )
          //               ],
          //             ),
          //             const SizedBox(height: 20.0),
          //             const Text('Hora del servicio'),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Text('Hace 21 min',
          //                     style: TextStyle(color: Colors.grey[600])),
          //                 Text(
          //                   'PEN 100',
          //                   style: TextStyle(
          //                       color: Colors.blue[800],
          //                       fontSize: 20.0,
          //                       fontWeight: FontWeight.bold),
          //                 )
          //               ],
          //             )
          //           ],
          //         ),
          //       ),
          //     );
          //   },
          // ),
          ),
    );
  }
}
