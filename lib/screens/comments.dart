import 'package:components/provider/comments_provider.dart';
import 'package:components/utils/date_ago.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommentScreen extends ConsumerWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Comments> comments = ref.watch(myComments);
    final commentsControl = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Comments'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          comments.isEmpty
              ? const Text('No comments yet')
              : Expanded(
                  child: ListView.separated(
                    itemCount: comments.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Row(
                          children: [
                            const SizedBox(
                              height: 60,
                            ),
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://i2-prod.dailystar.co.uk/tech/gaming/article22011536.ece/ALTERNATES/s1200b/0_Mortal-Kombat-11-Aftermath-MK11-Robocop.jpg'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 285,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Robocop',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(timeago
                                          .format(Repository().datas[index])
                                          .toString())
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 9,
                                  ),
                                  Text(comments[index].comentario),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, __) => const Divider(),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: commentsControl,
              autofocus: true,
              textCapitalization: TextCapitalization.sentences,
              onSubmitted: (s) {
                ref
                    .read(myComments.notifier)
                    .addComment(Comments(comentario: commentsControl.text));
              },
              decoration: InputDecoration(
                  hintText: 'Leave a comment. Use @ to mention',
                  suffixIcon: GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        ref.read(myComments.notifier).addComment(
                            Comments(comentario: commentsControl.text));
                      },
                      child: const Icon(Icons.send))),
            ),
          ),
        ],
      ),
    );
  }
}
