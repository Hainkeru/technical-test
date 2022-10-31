import 'package:components/screens/screens.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              null;
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            )),
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i2-prod.dailystar.co.uk/tech/gaming/article22011536.ece/ALTERNATES/s1200b/0_Mortal-Kombat-11-Aftermath-MK11-Robocop.jpg'),
            ),
            SizedBox(width: 10,),
            Text(
              'Robocop',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 15),
              child: const Icon(Icons.more_horiz, color: Colors.grey))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Image(
              image: NetworkImage(
                  'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2019/04/hobby-consolas-334-venta-posters-sekiro-mortal-kombat-11_8.jpg?itok=tW14lIZz')),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.edit,
                  size: 30,
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CommentScreen(),
                      ));
                    },
                    child: const Icon(Icons.mode_comment)),
                const SizedBox(
                  width: 290,
                ),
                const Icon(
                  Icons.note_add,
                  size: 30,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Row(children: [
              const Text(
                '2hrs ago',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.fiber_manual_record,
                size: 5,
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CommentScreen(),
                    ));
                  },
                  child: const Text(
                    'View all coments',
                    style: TextStyle(fontSize: 15),
                  ))
            ]),
          ),
          const SizedBox(
            height: 65,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CommentScreen(),
                      ));
                    },
                    child: const Text(
                      'Leave a comment. Use @ to mention',
                      style: TextStyle(fontSize: 20),
                    )),
                const SizedBox(
                  width: 40,
                ),
                const Icon(Icons.send)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
