## 断言示例

```javascript
assert_equals(actual, expected, description)
```

* actual: 所测功能的实际值

* expected: 期望值

* description(可选): 仅在断言失败时输出

* 例:

```javascript
assert_equals(
    getActualData('myElement'), 100,
    'Expected value for myElement is 100')
```
