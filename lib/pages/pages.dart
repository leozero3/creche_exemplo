import 'package:creche_exemplo/pages/atividades.dart';
import 'package:creche_exemplo/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pages extends StatefulWidget {
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NavigationButtom(),
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: _Navigation(),
        body: _Pages(),
      ),
    );
  }
}

class _Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final modelonavegacao = Provider.of<_NavigationButtom>(context);

    return PageView(
      controller: modelonavegacao.pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        HomePage(),
        Atividades(),
      ],
    );
  }
}

class _Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<_Navigation> {
  @override
  Widget build(BuildContext context) {
    final modelonavegacao = Provider.of<_NavigationButtom>(context);

    return BottomNavigationBar(
        currentIndex: modelonavegacao.paginaAtual,
        onTap: (pagina) => modelonavegacao.paginaAtual = pagina,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined, size: 30),
            label: 'Atividades',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 30),
            label: 'Configuração',
          ),
          // BottomNavigationBarItem(icon: Icon(Icons.person, size: 30),label: ''),
          // BottomNavigationBarItem(icon: Icon(Icons.workspaces_outline, size: 30),label: ''),
        ]);
  }
}

class _NavigationButtom with ChangeNotifier {
  int _paginaAtual = 0;
  PageController _pageController = PageController();

  int get paginaAtual => _paginaAtual;

  set paginaAtual(int value) {
    _paginaAtual = value;
    _pageController.animateToPage(value,
        duration: Duration(milliseconds: 500), curve: Curves.easeOut);
    notifyListeners();
  }

  PageController get pageController => _pageController;
}
