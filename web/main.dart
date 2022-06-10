// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

import 'dart:html';
import 'dart:js';

void main() {
  DivElement text = querySelector('#text') as DivElement;
  text.text = 'Hello World';

  var newData = JsObject.jsify([
    {'year': '2000', 'value': '1'},
    {'year': '2001', 'value': '20'},
    {'year': '2002', 'value': '300'},
    {'year': '2003', 'value': '4000'},
    {'year': '2004', 'value': '500'},
    {'year': '2005', 'value': '600'},
    {'year': '2006', 'value': '100'},
    {'year': '2007', 'value': '2000'},
    {'year': '2008', 'value': '300'},
    {'year': '2009', 'value': '400'},
    {'year': '2010', 'value': '500'},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [newData]);
  chart.callMethod('render', []);
}
