import 'package:breakingbad/src/pages/detail/widgets/description_widget.dart';
import 'package:breakingbad/src/pages/detail/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Page'),
        ),
        body: Column(
          children: const [ImageWidget(), DescriptionWidget()],
        ));
  }
}
