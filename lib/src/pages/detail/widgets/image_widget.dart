import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/characters_provider.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final charProvider = Provider.of<CharacterProvider>(context);

    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Image.network(charProvider.activeCharacter!.img),
    );
  }
}
