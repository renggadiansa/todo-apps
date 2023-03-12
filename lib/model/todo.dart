class ToDo {
  String? id;
  String? todoText;
  bool isDone;


ToDo({
  required this.id,
  required this.todoText,
  this.isDone = false,
});

static List<ToDo> todoList() {
  return [
    ToDo(id: '01', todoText: 'Selamat Pagi', isDone: true),
    ToDo(id: '02', todoText: 'Hari yang cerah', isDone: true),
    ToDo(id: '03', todoText: 'Mari kita sekolah',),
    ToDo(id: '04', todoText: 'Jangan lupa sarapan',),
    ToDo(id: '05', todoText: 'Jangan lupa istirahat',),
    ToDo(id: '06', todoText: 'Semangat😘😘',),

  ];
}

}
