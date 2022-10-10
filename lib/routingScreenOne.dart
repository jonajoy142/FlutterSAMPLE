// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screenTwo.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sample Whatsapp UI"),
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text('PERSON $index'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return ScreenTwo(name: 'HEY!! PERSON $index');
                      },
                    ),
                  );
                },
                subtitle: Text("Message $index"),
                leading: const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://m.media-amazon.com/images/I/51feEk1N1eL._SL1000_.jpg')

                    //  AssetImage('assets/imgs/DSC00978.jpg')

                    ),
                trailing: Text('1$index:00 PM'),
              );
            },
            separatorBuilder: (ctx, index) {
              return const Divider();
            },
            itemCount: 50),
      ),
    );
  }
}
