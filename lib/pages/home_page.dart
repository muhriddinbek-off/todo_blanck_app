import 'package:flutter/material.dart';
import 'package:todo_blanck_app/widgets/todo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3DA9FC),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 154,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('TodoRama', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white)),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          height: 40,
                          width: 250,
                          decoration: const BoxDecoration(color: Color.fromRGBO(255, 255, 255, 0.22), borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50))),
                          child: const TextField(decoration: InputDecoration(border: InputBorder.none, hintText: 'Search', hintStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white))),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomRight: Radius.circular(50))),
                          child: const TextField(textAlign: TextAlign.center, decoration: InputDecoration(border: InputBorder.none, hintText: 'Search', hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xFF3DA9FC)))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
                child: const Expanded(child: TodoList()),
              )),
            ],
          ),
          Positioned(
            bottom: 40,
            right: 20,
            child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/save-page');
                },
                child: const Icon(Icons.add, color: Colors.white, size: 30)),
          ),
        ],
      ),
    );
  }
}
