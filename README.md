# emacs安装前说明

## Cask安装
<p><code>curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python</code></p>
### 设置环境变量
<p><code>export PATH="/Users/ccc/.cask/bin:$PATH"</p>

## Ag安装
### Mac OS X 通过 Homebrew 安装
<p><code>brew install the_silver_searcher</code></p>
### Ubuntu 下安装
<p><code>apt-get install silversearcher-ag</code></p>
### Windows 下通过 msys2 安装（确保在 path 中）
<p><code>pacman -S mingw-w64-i686-ag # 32 位电脑</code></p>
<p><code>pacman -S mingw-w64-x86_64-ag # 64 位电脑</code></p>

## 编程环境
### pyhon环境需安装插件
#### Either of these
<p><code>pip install rope</code></p>
<p><code>pip install jedi</code></p>
#### flake8 用来检查语法错误
<p><code>pip install flake8</code></p>
#### importmagic 用来自动引入需要的包
<p><code>pip install importmagic</code></p>
#### autopep8 用来检查PEP8规范
<p><code>pip install autopep8</code></p>
#### yapf 用来格式化代码
<p><code>pip install yapf</code></p>
  
### lisp环境安装插件
<p><code>brew install sbcl</code></p>
