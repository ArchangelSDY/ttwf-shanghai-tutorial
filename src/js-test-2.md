## 参数1 testFunc

* testFunc必须是一个对象, 不是一个函数调用

* testFunc必须包含测试断言方法

    * 如果内置的断言方法不能满足需求, 可参考testharness.js自己编写

* 断言的结果会决定PASS/FAIL

* 例:

```javascript
test(function() { assert_true(true) }, name, properties)
```
