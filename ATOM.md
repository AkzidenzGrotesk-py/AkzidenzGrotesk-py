# Atom Settings
- **Font:** [Iosevka](https://github.com/be5invis/Iosevka)/SF Mono/Fira Code, 15
- **Invisibles:** \r: ·, \n: ↩, space: ·, tab: »
- **Line height:** 1.75
- **Tab length:** 2
- **UI/Syntax themes:** One Dark, Dark One Dark (customized)
- **Packages:** stop-cursor-blinking, center-cursor, go-to-line-plus, linter, linter-pylint, linter-ui-default, minimap, multi-wrap-guide, relative-numbers
  - **block-cursor:** _border_ #5d84d1, _background_ transparent, _style_ bordered-box, _border width_ 1

## Customized Dark One Dark
```css
/*    editor.less    */
...
.cursor {
  border: 1px solid @syntax-cursor-color;
}
...
.find-result .region.region.region {
  border: 1px solid transparent;
}
.current-result .region.region.region {
  border: 1px solid @syntax-result-marker-color-selected;
  ...
}
...

/*    syntax\_base.less    */
...
&.syntax--other.syntax--special-method {
  ...
  font-weight: 700;
}
...
&.syntax--type {
  ...
  font-weight: 700;
}
```
