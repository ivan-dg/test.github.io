import 'package:briefcase/constants/constants.dart';
import 'package:briefcase/lib/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroke_text/stroke_text.dart';

class VirtualOfficePage extends StatefulWidget {
  const VirtualOfficePage({super.key});

  @override
  State<VirtualOfficePage> createState() => _VirtualOfficePageState();
}

class _VirtualOfficePageState extends State<VirtualOfficePage> {
  final textColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        tween: ColorTween(
          begin: Theme.of(context).scaffoldBackgroundColor,
          end: const Color(0XFFF2F2F2),
        ),
        builder: (BuildContext context, dynamic value, Widget? child) {
          return Container(
            color: value,
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Constants.paddingH, vertical: 30),
                    child: Row(
                      children: [
                        NameWidget(
                          color: textColor,
                        ),
                        const Spacer(),
                        BackButton(color: textColor),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/cons_virt_1.jpg',
                        ),
                      ),
                    ),
                    height: 300,
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Constants.paddingH),
                        child: StrokeText(
                          maxLines: 2,
                          text: 'CONSULTORIO VIRTUAL',
                          textStyle: GoogleFonts.kanit(
                            color: Colors.transparent,
                            fontSize: 120,
                            fontWeight: FontWeight.w900,
                            height: 1,
                          ),
                          strokeColor: Colors.white,
                          strokeWidth: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(110),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 360,
                          child: Column(
                            children: [
                              Text(
                                '¡Bienvenido a Consultorio Virtual, tu asistente personal para gestionar y mejorar tu salud! Con Consultorio Virtual podrás:',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 28,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const Gap(20),
                              Text(
                                'Monitorear indicadores clave de salud como peso, presión arterial, ritmo cardíaco y más. Recibir recordatorios y alertas para tomar medicación o realizar chequeos importantes.',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100,
                                  height: 2,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        const Gap(30),
                        SizedBox(
                          width: 360,
                          child: Column(
                            children: [
                              Text(
                                'Visualizar tu evolución con gráficos y estadísticas detalladas. Acceder a consejos personalizados y recomendaciones basadas en tus datos de salud. ',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100,
                                  height: 2,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const Gap(20),
                              Text(
                                'Compartir tu información con médicos y profesionales de la salud de forma segura. Empieza a tomar el control de tu bienestar hoy mismo. ¡Descarga Consultorio Virtual y lleva un registro completo de tu salud en la palma de tu mano!',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100,
                                  height: 2,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0XFF2A52A3),
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 110),
                      child: Row(
                        children: [
                          Image.asset(
                            height: 500,
                            'assets/cons_virt_2.png',
                          ),
                          const Gap(50),
                          Image.asset(
                            height: 500,
                            'assets/cons_virt_3.png',
                          ),
                          const Gap(50),
                          Image.asset(
                            height: 500,
                            'assets/cons_virt_5.png',
                          ),
                          const Gap(50),
                          Image.asset(
                            height: 500,
                            'assets/cons_virt_4.png',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(200),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
