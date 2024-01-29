import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  List<MenuRowData> fisrtMenuRow = [
    MenuRowData(Icons.favorite_outline, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer_rounded, 'Устройства'),
    MenuRowData(Icons.folder, 'Папка с чатами'),
  ];
  List<MenuRowData> secondMenuRow = [
    MenuRowData(Icons.notifications, 'Уведомления и звуки'),
    MenuRowData(Icons.privacy_tip, 'Конфиденциальность'),
    MenuRowData(Icons.data_saver_off_sharp, 'Данные и память'),
    MenuRowData(Icons.brush, 'Оформление'),
    MenuRowData(Icons.language, 'Язык'),
  ];
  UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: const Text(
          'Настройки',
          style: TextStyle(
            color: Colors.white,

          )
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(),
            SizedBox(height: 30),
            _MenuWidget(menuRow: fisrtMenuRow),
            SizedBox(height: 30),
            _MenuWidget(menuRow: secondMenuRow),
          ],
        ),
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({super.key, required this.menuRow});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: menuRow.map((data) => _MenuItemWidget(data: data)).toList(),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuItemWidget extends StatelessWidget {
  final MenuRowData data;

  const _MenuItemWidget({
    super.key, required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(data.icon),
                SizedBox(width: 15),
                Expanded(child: Text(data.text)),
                Icon(Icons.chevron_right)
              ],
            ),
          ),
          Divider(height: 2),
        ]
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 20),
      
          _AvatarWidget(),
      
          const SizedBox(height: 30),
      
          _UserNameWidget(),
      
          const SizedBox(height: 10),
      
          _PhoneWidget(),
      
          const SizedBox(height: 10),
      
          _UserNickNameWidget(),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@vmn26',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 17,
      )
    );
  }
}

class _PhoneWidget extends StatelessWidget {
  const _PhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+1 111 111 11 11',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 18,
      )
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Вадим',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      )
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: const Placeholder()
    );
  }
}