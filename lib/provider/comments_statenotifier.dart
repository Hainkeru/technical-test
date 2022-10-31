part of 'comments_provider.dart';

class Comments {
  final String comentario;

  Comments({required this.comentario});
}

class Notifier extends StateNotifier<List<Comments>> {
  Notifier() : super([]);

  void addComment(Comments comment) {
    state = [...state, comment];
  }
}

final myComments = StateNotifierProvider<Notifier, List<Comments>>((ref) {
  return Notifier();
});
