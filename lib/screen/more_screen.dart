// more_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/logo.png'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: const Text(
                'Baekhyun',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: 140,
              height: 5,
              color: Colors.red,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Linkify(
                onOpen: (link) async {
                  if (await canLaunchUrl(Uri.parse(link.url))) {
                    await launchUrl(Uri.parse(link.url));
                  }
                },
                text: "https://github.com/Baekhyun",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                linkStyle: const TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                child: Container(
                  height: 41,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '프로필 수정하기',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
