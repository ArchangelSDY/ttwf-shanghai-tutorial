## 参数3 properties

* properties是可选参数, 描述测试本身的一些属性, 如省略, 测试将使用默认值

* 可识别的属性包括timeout和metadata

* 例:

```javascript
test(function() { assert_true(true) }, 'test_name', {
    timeout: 1000,
    help: 'http://www.w3.org/TR/spec#section',
    author: ['Bill Gates <bgates@msn.com>', 'Steve Jobs http://apple.com/sjobs'],
    assert: 'This should always be true.'
})
```
