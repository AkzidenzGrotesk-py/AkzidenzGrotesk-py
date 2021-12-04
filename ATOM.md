# Atom Settings
- **Font:** [Iosevka](https://github.com/be5invis/Iosevka)/SF Mono/Fira Code, 15
- **Invisibles:** \r: ·, \n: ↩, space: ·, tab: »
- **Line height:** 1.75
- **Tab length:** 2
- **UI/Syntax themes:** One Dark, Dark One Dark (customized)
- **Packages:** stop-cursor-blinking, center-cursor, go-to-line-plus, linter, linter-pylint, linter-ui-default, minimap, multi-wrap-guide, relative-numbers

## Customized Dark One Dark
```less
/*    editor.less    */
...
.cursor {
  // empty box cursor
  border: 1px solid @syntax-cursor-color;
  // or L bracket cursor
  border-left: 2px solid @syntax-cursor-color;
  border-bottom: 2px solid @syntax-cursor-color;
  // add for [ bracket curspr
  border-top: 2px solid @syntax-cursor-color;
  
  box-sizing: border-box;
}

.selection .region {
  ...
  border: 1px solid lighten(@syntax-selection-color, 4%);
  box-sizing: border-box;
}

.bracket-matcher .region {
  ...
  background: @syntax-selection-color;
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
