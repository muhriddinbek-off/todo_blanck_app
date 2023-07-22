import 'package:flutter/material.dart';

import '../modul/add_modul.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: text1.length,
      separatorBuilder: (context, index) {
        return const Divider(thickness: 1.4);
      },
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            height: 59,
            width: 59,
            decoration: BoxDecoration(border: Border.all(color: Colors.blue.shade300, width: 2), borderRadius: BorderRadius.circular(50)),
            child: const Icon(Icons.done, color: Color(0xFF3DA9FC), size: 40),
          ),
          title: Text(text1[index], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFF094067))),
          subtitle: Text(text2[index], maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(9, 64, 103, 0.47))),
          onTap: () {
            Navigator.pushNamed(context, '/save-delete-page');
          },
        );
      },
    );
  }
}
