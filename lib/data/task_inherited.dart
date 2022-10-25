import 'package:flutter/material.dart';
import 'package:game_flix/component/taskList.dart';

class TaskInherited extends InheritedWidget {
  final List<Task> taskList = [
    const Task(
        name: 'Jogo com JavaScript',
        link: 'https://www.youtube.com/watch?v=r9buAwVBDhA',
        section: 'Desenvolvimento',
        image: 'https://i.ytimg.com/vi/r9buAwVBDhA/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAMuN5v0kjlhWmm0np_qIyfiNZ5RQ',
    ),
    const Task(
      name: 'ESSE REWORK DO UDYR TÁ O MELHOR QUE EU JÁ VI, SENSACIONAL!!',
      link: 'https://www.youtube.com/watch?v=b4is2vwZj3s',
      section: 'Moba',
      image: 'https://i.ytimg.com/vi/b4is2vwZj3s/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAxTSVDKrQr34woo2Mg-SdlGvKNzw',
    ),
    const Task(
      name: 'Jogo com JavaScript',
      link: 'https://www.youtube.com/watch?v=r9buAwVBDhA',
      section: 'Desenvolvimento',
      image: 'https://i.ytimg.com/vi/r9buAwVBDhA/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAMuN5v0kjlhWmm0np_qIyfiNZ5RQ',
    ),
  ];

  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
