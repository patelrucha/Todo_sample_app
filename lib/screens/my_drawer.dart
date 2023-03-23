import 'package:flutter/material.dart';
import 'package:flutter_tasks_app/Apiservice/Homescreen.dart';
import 'package:flutter_tasks_app/Apiservice/ShowllistData.dart';

import '../bloc/bloc_exports.dart';
import 'recycle_bin.dart';
import 'tabs_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            // Container(
            //   width: double.infinity,
            //   padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 15),
            //   color: Colors.grey,
            //   child: Text(
            //     '',
            //     style: Theme.of(context).textTheme.headline5,
            //   ),
            // ),
            BlocBuilder<TasksBloc, TasksState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () =>
                      Navigator.of(context).pushReplacementNamed(TabsScreen.id),
                  child: ListTile(
                    leading: const Icon(Icons.folder_special),
                    title: const Text('My Tasks'),
                    trailing: Text(
                        '${state.pendingTasks.length} | ${state.completedTasks.length}'),
                  ),
                );
              },
            ),
            const Divider(),
            BlocBuilder<TasksBloc, TasksState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () =>
                      Navigator.of(context).pushReplacementNamed(RecycleBin.id),
                  child: ListTile(
                    leading: const Icon(Icons.delete),
                    title: const Text('Bin'),
                    trailing: Text('${state.removedTasks.length}'),
                  ),
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.only(left: 72),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                child: Text(
                  "Api Data screen",
                  style: TextStyle(
                    fontSize: 13,fontWeight: FontWeight.w700
                  ),
                ),
              ),
            )
            // BlocBuilder<SwitchBloc, SwitchState>(
            //   builder: (context, state) {
            //     return Switch(
            //         value: state.switchValue,
            //         onChanged: ((newValue) {
            //           print(newValue);
            //           if (newValue) {
            //             context.read<SwitchBloc>().add(SwitchOnEvent());
            //           } else {
            //             context.read<SwitchBloc>().add(SwitchOffEvent());
            //           }
            //         }));
            //   },
            // )
        ],
      ),
          )),
    );
  }
}
