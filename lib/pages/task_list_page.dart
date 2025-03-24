import 'package:flutter/material.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  final TextEditingController _taskController = TextEditingController();
  final List<Map<String, dynamic>> _tasks = []; // List to store tasks

  void _addTask() {
    if (_taskController.text.trim().isNotEmpty) {
      setState(() {
        _tasks.add({'title': _taskController.text.trim(), 'completed': false});

        _taskController.clear();
      });
    }
  }

  void _toggleTask(int value) {
    setState(() {
      _tasks[value]['completed'] = !_tasks[value]['completed'];
    });
  }

  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task List')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _taskController,
                    decoration: const InputDecoration(
                      labelText: 'Enter a task',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _addTask(),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(onPressed: _addTask, child: const Text('Add')),
              ],
            ),
            Expanded(
              child:
                  _tasks.isEmpty
                      ? const Center(child: Text('No task yet!'))
                      : ListView.builder(
                        itemCount: _tasks.length,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 2,
                            margin: const EdgeInsets.symmetric(vertical: 4),
                            child: ListTile(
                              leading: Checkbox(
                                value: _tasks[index]['completed'],
                                onChanged: (bool? value) {
                                  _toggleTask(index);
                                },
                                activeColor: Colors.green,
                              ),
                              title: Text(
                                _tasks[index]['title'],
                                style: TextStyle(
                                  decoration:
                                      _tasks[index]['completed']
                                          ? TextDecoration.lineThrough
                                          : TextDecoration.none,
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: () => _deleteTask(index),
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
