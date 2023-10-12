import 'package:flutter/material.dart';
import 'package:todo_app/UI/Screens/bottom%20sheets/add_bottom_sheet.dart';
import 'package:todo_app/UI/Screens/home/tabs/list/list_tab.dart';
import 'package:todo_app/UI/Screens/home/tabs/settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int curentSelectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomNav(),
      floatingActionButton: buildFab(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: curentSelectedTabIndex == 0 ? ListTab() : SettingsTab(),
    );
  }

  PreferredSizeWidget buildAppBar() => AppBar(
        title: const Text('To Do List'),
        toolbarHeight: MediaQuery.of(context).size.height * 0.05,
      );

  Widget buildBottomNav() => BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        clipBehavior: Clip.hardEdge,
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          ],
          onTap: (value) {
            curentSelectedTabIndex = value;
            setState(() {});
          },
          currentIndex: curentSelectedTabIndex,
        ),
      );

  Widget buildFab() => FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (_) => Padding(
                    padding: MediaQuery.of(context).viewInsets,
                    child: const AddBottomSheet(),
                  ));
        },
        child: const Icon(Icons.add),
      );
}
