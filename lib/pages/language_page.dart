import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagePage extends StatelessWidget {

  final List locale =[
    {'name':'English','locale': Locale('en','UK')},
    {'name':'Soomaali','locale': Locale('so','SO')},
    {'name':'عربي','locale': Locale('ar','AR')},
    {'name':'Norsk','locale': Locale('nb','NO')},
    {'name':'Española','locale': Locale('es','ES')},
    {'name':'ትግሪኛ','locale': Locale('ti','ET')},
    {'name':'Dari','locale': Locale('prs','AF')},
    {'name':'فارسی','locale': Locale('fa','IR')},
    {'name':'اردو','locale': Locale('ur','PK')},
    {'name':'kiswahili','locale': Locale('sw','KE')},
    {'name':'українська','locale': Locale('uk','UA')},
  ];

  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context){
    showDialog(context: context,
        builder: (builder){
          return AlertDialog(
            title: Text('Select Language'.tr),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(child: Text(locale[index]['name']),onTap: (){
                        print(locale[index]['name']);
                        updateLanguage(locale[index]['locale']);
                      },),
                    );
                  }, separatorBuilder: (context,index){
                return Divider(
                  color: Colors.blue,
                );
              }, itemCount: locale.length
              ),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('welcome'.tr),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello'.tr,style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,),
            Text('message'.tr,style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Text('subscribe'.tr,style: TextStyle(fontSize: 20),),

            ElevatedButton(onPressed: (){
              buildLanguageDialog(context);
            }, child: Text('changelang'.tr)),
          ],
        )
    );
  }
}