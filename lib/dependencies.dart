import 'package:redux/redux.dart';
import 'package:shop_flutter_app/data_api/database_dao.dart';
import 'package:shop_flutter_app/database/dao.dart';
import 'package:shop_flutter_app/database/init_hive.dart';
import 'package:shop_flutter_app/database/models/hive_product.dart';
import 'package:shop_flutter_app/network/dao.dart';
import 'package:shop_flutter_app/network/products_api.dart';
import 'package:shop_flutter_app/redux/state.dart';
import 'package:shop_flutter_app/redux/store.dart';
import 'package:shop_flutter_app/screens/navigator.dart';

import 'data_api/network_dao.dart';

class Dependencies {
  final ProductApiDao productsApi;
  late final Store<GlobalState> store = MyStoreBuilder.build();
  final AppNavigator navigator;
  final CartProductDao cartProductDao;

  static late Dependencies _instance;
  Dependencies._(this.navigator, this.productsApi, this.cartProductDao);

  static Future<Dependencies> init() async {
    final hiveBuilder = await HiveBuilder.build();
    final cartProductDao = DatabaseApi(database: hiveBuilder.cartBox);


    return _instance = Dependencies._(
      AppNavigator(),
      NetworkApi(),
      cartProductDao,
    );
  }

  static Dependencies get instance => _instance;
}
