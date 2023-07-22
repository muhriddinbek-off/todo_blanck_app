import 'package:flutter/material.dart';
import 'package:todo_blanck_app/modul/add_modul.dart';
import 'package:todo_blanck_app/widgets/button_widget.dart';
import 'package:todo_blanck_app/widgets/text_title.dart';

class SavePage extends StatefulWidget {
  const SavePage({super.key});

  @override
  State<SavePage> createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3DA9FC),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color(0xFF3DA9FC),
        elevation: 0,
        centerTitle: true,
        leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 40))),
        title: const Text('TodoRama', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: ListView(
                  children: [
                    const SizedBox(height: 50),
                    const TextTitle(title: 'Name'),
                    const SizedBox(height: 20),
                    TextField(
                      controller: controller1,
                      maxLines: 1,
                      decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Name', hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                    ),
                    const SizedBox(height: 40),
                    const TextTitle(title: 'Details'),
                    const SizedBox(height: 20),
                    TextField(
                      controller: controller2,
                      maxLines: 10,
                      decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Name', hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                    ),
                    const SizedBox(height: 35),
                    ButtonWidget(
                        title: 'Save',
                        buttonColor: const Color(0xFF3DA9FC),
                        onchange: () {
                          text1.add(controller1.text);
                          text2.add(controller2.text);
                          Navigator.pushNamed(context, '/home-page');
                        }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
