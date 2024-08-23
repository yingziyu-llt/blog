#import "template.typ": *

#show: template.with(
  // 笔记标题
  title: [机器学习],
  // 在页眉展示的短标题（选填）
  short-title: "西瓜书学习笔记",
  // 笔记描述（选填）
  description: [
    2024 Summer
  ],
  // 笔记创建日期（选填）
  date: datetime(year: 2024, month: 8, day: 1),
  // 作者信息（除 name 外，其他参数选填）
  authors: (
    (
      name: "yingziyu-llt",
      github: "https://github.com/yingziyu-llt",
    ),
  ),

  // 参考书目文件路径及引用样式
  bibliography-file: "refs.bib",
  bibstyle: "gb-7714-2015-numeric",

  // 页面尺寸，同时会影响页边距。
  paper-size: "a4",

  // 中英文文本和代码的字体
  fonts: (
    (
      en-font: "Linux Libertine",
      zh-font: "Noto Sans CJK SC",
      code-font: "DejaVu Sans Mono",
    )
  ),
  
  // 主题色
  accent: blue,
  // 封面背景图片（选填图片路径或 none）
  cover-image: "./figures/cover-image.png",
  // 正文背景颜色（选填 HEX 颜色或 none）
  background-color: "#FAF9DE"
)

#include "content/chapter1.typ"
#include "content/chapter2.typ"
