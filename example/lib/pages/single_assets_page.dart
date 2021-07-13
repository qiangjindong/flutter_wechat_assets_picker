///
/// [Author] Alex (https://github.com/Alex525)
/// [Date] 2020-05-31 21:17
///
import 'package:flutter/material.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import '../constants/page_mixin.dart';
import '../constants/picker_method.dart';

class SingleAssetPage extends StatefulWidget {
  @override
  _SingleAssetPageState createState() => _SingleAssetPageState();
}

class _SingleAssetPageState extends State<SingleAssetPage>
    with AutomaticKeepAliveClientMixin, ExamplePageMixin {
  @override
  int get maxAssetsCount => 1;

  @override
  List<PickMethod> get pickMethods {
    return <PickMethod>[
      PickMethod.image(maxAssetsCount),
      PickMethod.video(maxAssetsCount),
      PickMethod.audio(maxAssetsCount),
      PickMethod.camera(
        maxAssetsCount: maxAssetsCount,
        handleResult: (BuildContext context, AssetEntity result) =>
            Navigator.of(context).pop(<AssetEntity>[result]),
      ),
      PickMethod.cameraAndStay(maxAssetsCount: maxAssetsCount),
      PickMethod.common(maxAssetsCount),
      PickMethod.threeItemsGrid(maxAssetsCount),
      PickMethod.customFilterOptions(maxAssetsCount),
      PickMethod.prependItem(maxAssetsCount),
      PickMethod.noPreview(maxAssetsCount),
    ];
  }

  @override
  bool get wantKeepAlive => true;
}
