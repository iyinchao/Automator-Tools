# 🤖️ Automator Tools

## What's this ?

This is a collection of utilities I made using the macOS Automator, with predefined workflow, Applescript, shell script etc.

## Tools In Collection

### 🆚 Open In VSCode

> Open folders or files in vscode

#### Install

1. Copy it to `/Applications` folder or make an [alias](https://support.apple.com/en-hk/guide/mac-help/mchlp1046/mac) in that folder if you like.
2. Press command key (`⌘`) and Drag the app to Finder's toolbar to add.
3. If you experience permission error, refer to [caveats](#caveats) section

### Usage

In `finder` app, Click the toolbar icon with:  
 **Nothing selected**: Open current directory  
 **Single or multiple file(s) / folder(s) selected**:
Open vscode window for each selected item.

### 🖥️ Open In iTerm2

> Open folders or files in iTerm2

#### Install

Same as `Open in vscode`

#### Usage

In `finder` app, Click the toolbar icon with:  
 **Nothing selected**: Open new iTerm2 tab for current finder directory  
 **Single or multiple file(s) / folder(s) selected**:
Open each selected item in one iTerm2 window as tabs.

### 🙈 Toggle Hidden Files

> Click to show/hide hidden files in finder  
> It sends `command + shift + .` shortcut to current finder window.

#### Install

Same as `Open in vscode`

#### Usage

Just click it.

### 💬 Wechat 2

> Open another Wechat to login a different account

#### Install & Usage

Drag it to `/Applications` folder and use it like a normal app.

### 🖋️ Restart IME

> Sometimes the IME process of mac will hang the whole system, after opening for a long time without restart, see [this](https://little-feyfey.medium.com/%E8%A7%A3%E6%B1%BAmac-macbook-%E9%80%B1%E6%9C%9F%E6%80%A7%E5%8D%A1%E9%A0%93%E7%9A%84%E5%95%8F%E9%A1%8C-cause-by-input-method-a215f3b36409) and [that](https://www.v2ex.com/t/792367). This app will restart the IME process to resolve it.

#### Install & Usage

Same as `Wechat 2`

## Caveats

### Fix permission

Run the script:

```shell
sudo bash ./tools/enable-apps.sh
```

### Change icon

For copyright consideration, the repo will not include icon files. If you want to change the icon of each tools, follow this [tutorial](https://www.digitaltrends.com/computing/how-to-change-folder-icon-mac/).
