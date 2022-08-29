import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/characters_provider.dart';

class CharactersList extends StatefulWidget {
  const CharactersList({Key? key}) : super(key: key);

  @override
  State<CharactersList> createState() => _CharactersListState();
}

class _CharactersListState extends State<CharactersList> {
  @override
  Widget build(BuildContext context) {
    final charProvider = Provider.of<CharacterProvider>(context);

    return ListView.builder(
      itemCount: charProvider.characters?.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: () => {
            charProvider
                .selectCharacter(charProvider.characters![index].charId),
            Navigator.pushNamed(context, 'detail')
          },
          title: Text(charProvider.characters?[index].name ?? ''),
          subtitle: Text(charProvider.characters?[index].nickname ?? ''),
          leading: CircleAvatar(
            backgroundImage:
                NetworkImage(charProvider.characters?[index].img ?? ''),
          ),
        );
      },
    );
  }
}
