import 'package:briefcase/constants/constants.dart';
import 'package:briefcase/lib/pages/mepet_page.dart';
import 'package:briefcase/lib/pages/pubs_page.dart';
import 'package:briefcase/lib/pages/virtual_office_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/name_widget.dart';
import '../widgets/text_option_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Función para abrir el enlace
  Future<void> _launchURL(String url) async {
    final Uri toLaunch = Uri.parse(url);
    if (!await launchUrl(toLaunch, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.paddingH, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const NameWidget(),
                const Gap(30),
                FadeTransition(
                  opacity: _animation,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Briefcase of Ivan Gustin',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            'Software Developer',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      const Gap(30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pasto, Colombia',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          SelectableText(
                            'ivandgustin@gmail.com',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const Gap(30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () => _launchURL(
                                'https://www.linkedin.com/in/ivandgu/'),
                            child: Row(
                              children: [
                                Text(
                                  '01',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontWeight: FontWeight.w100,
                                        fontSize: 10,
                                      ),
                                ),
                                const Gap(15),
                                Text(
                                  'Linkedin',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Gap(50),
                  TextOptionWidget(
                    title: 'PUBS',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const PubsPage(),
                        ),
                      );
                    },
                  ),
                  TextOptionWidget(
                    title: 'MEPET',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const MepetPage(),
                        ),
                      );
                    },
                  ),
                  TextOptionWidget(
                    title: 'CONSULTORIO',
                    subtitle: 'VIRUTAL',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const VirtualOfficePage(),
                        ),
                      );
                    },
                  ),
                  TextOptionWidget(
                    title: 'PUBS',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const PubsPage(),
                        ),
                      );
                    },
                  ),
                  TextOptionWidget(
                    title: 'MEPET',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const MepetPage(),
                        ),
                      );
                    },
                  ),
                  TextOptionWidget(
                    title: 'CONSULTORIO',
                    subtitle: 'VIRUTAL',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const VirtualOfficePage(),
                        ),
                      );
                    },
                  ),
                  const Gap(50),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
