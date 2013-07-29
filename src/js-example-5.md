## 步骤5

在script块中添加一个test()调用

在testFunc中使用assert_equals

```html
<script type="text/javascript">
    localStorage.clear();
    localStorage.setItem('name', 'user1');
    test(function() {
        assert_equals(localStorage.getItem('name'), 'user1', 'localStorage.getItem("name") should be "user1"');
    }, 'getItem method test');
</script>
```
