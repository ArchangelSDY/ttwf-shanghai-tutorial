## 测试框架

### testharness.js 和 testharnessreport.js

```html
<link rel="stylesheet" href="/resources/testharness.css" />
<script src="/resources/testharness.js"></script>
<script src="/resources/testharnessreport.js"></script>
```

* 包含常用的断言方法

* 路径必须是相对根级的/resources目录

    * 本地调试可使用任意路径

    * 提交到代码库前需改成根级路径

* 测试文件中应该存在id="log"的元素

    * 测试结果表格将在该元素中展现
