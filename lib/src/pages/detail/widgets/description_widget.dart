import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/characters_provider.dart';

class DescriptionWidget extends StatefulWidget {
  const DescriptionWidget({super.key});

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  @override
  Widget build(BuildContext context) {
    final charProvider = Provider.of<CharacterProvider>(context);

    return Container(
      padding: const EdgeInsets.only(left: 35, top: 20, right: 35),
      alignment: Alignment.centerLeft,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Name: ${charProvider.activeCharacter?.name}"),
        Text("Nickname: ${charProvider.activeCharacter?.nickname}"),
        Text("Birthday: ${charProvider.activeCharacter?.birthday}"),
        Text("Status: ${charProvider.activeCharacter?.status}"),
        Text(
            "Occupation: ${charProvider.activeCharacter?.occupation.join(', ')}"),
        Text("Portrayed: ${charProvider.activeCharacter?.portrayed}"),
        Text("Category: ${charProvider.activeCharacter?.category}"),
      ]),
    );
  }
}
