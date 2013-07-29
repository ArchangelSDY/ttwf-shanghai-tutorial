## 浏览器前缀

* 在你开发测试时可能需要给CSS属性添加浏览器前缀(-webkit, -moz, -o, -ms)以使其正常工作

* 但是, 当把测试提交到W3C时不能包含这些前缀

```html
<style type="text/css">
.greenSquare {
    position: absolute;
    top: 0;
    left: 0;
    width: 100px;
    height: 100px;
    -webkit-transform: translate(100px, 100px);
    -moz-transform: translate(100px, 100px);
    -ms-transform: translate(100px, 100px);
    -o-transform: translate(100px, 100px);
    background: green;
}
</style>
```
