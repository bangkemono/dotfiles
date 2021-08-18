<!-- 
     readme.md, a simple readme for my github dotfiles repo
                    made by Bangkemono
                                                             -->
# Dotfiles 
![iceage theme](https://i.imgur.com/rJRBJ2n.png)

![lightnime theme](https://i.imgur.com/jU1JBGh.jpeg)

## Installation

**BEFORE YOU INSTALL, MAKE SURE YOU REVIEW THE CODE AND REMOVE THE ONES YOU DO NOT NEED**<br/>
in summary, use these dots at your own risk, it's open source anyways  <br/>
first copy the source code  

```bash
git clone https://github.com/bangkemono/dotfiles.git && cd dotfiles
```  

just copy everything in configs/ to .configs, and afterwards you could also copy the wallpapers to whichever wallpaper directory you want, vimrc and bashrc goes in its said place,
you could merge Xresources with xrdb straight from source. (yes i use xterm)  

```bash
cp bashrc ~/.bashrc && cp vimrc ~/.vimrc && cd i3-gaps/iceage/ && cp config/* -rv ~/.config/
```
for iceage theme (the one i use for the preview), or
```bash
cp bashrc ~/.bashrc && cp vimrc ~/.vimrc && cd i3-gaps/light/ && cp config/* -rv ~/.config/
```
for the lightnime theme config, or
```bash
cp bashrc ~/.bashrc && cp vimrc ~/.vimrc && cd i3-gaps/dark/ && cp config/* -rv ~/.config/
```
for the dark theme config

## Themes

There are 3 themes that are currently available for my i3-gaps config (i will post screenshots of it later)  

* Iceage (custom theme with a nord-ish look)
* Lightnime Theme
* Dark Theme

## Feedback

Any feedbacks are welcome, i am a novice ricer and i am willing to accept any kind of criticism, whether it's the colorscheme, or the structure of my dotfiles
