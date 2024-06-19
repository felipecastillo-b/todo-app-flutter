import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/model/todo.dart';
import 'package:myapp/widgets/todo_item.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20, 
          vertical: 15
        ),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 50,
                      bottom: 20,
                      ),
                    child: Text(
                      'All To Do',
                      style: TextStyle(
                        fontSize: 30, 
                        fontWeight: FontWeight.w500),
                      ),
                  ),
                  for ( ToDo todo in todosList)
                  ToDoItem(todo: todo,),
                ],
              ),
            ),
          ],
        ),
      ),
      );
  }

  Widget searchBox() {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search, 
                    color: colorBlack ,
                    size: 20,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    maxHeight: 20,
                    minWidth: 25,
                    ),
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: colorGrey),
                ),
              ),
            );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: colorBackground,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(
          Icons.menu,
          color: colorBlack,
          size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/avatar.jpeg'),
              ),
          )
      ]),
    );
  }
}