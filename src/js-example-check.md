## 检查点

此时用例文件应显示如下

author元数据应该包含你实际的名字和邮箱

```html
<!DOCTYPE HTML>
<html>
<head>
    <title>WebStroage API Test: localStorage.getItem</title>
    <link rel="author" title="Your Name" href="mailto:yourmail@address.com" />
    <link rel="help" href="http://www.w3.org/TR/webstorage/#the-storage-interface" />
    <link rel="stylesheet" href="/resources/testharness.css" />
    <meta name="flags" content="dom"/>
    <meta name="assert" content="The saved item should be get correctly"/>
    <script type="text/javascript" src="/resources/testharness.js"></script>
    <script type="text/javascript" src="/resources/testharnessreport.js"></script>
</head>
<body>
    <div id="log"></div>
</body>
</html>
```
