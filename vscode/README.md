# 設定方法
## extension

### import

```bash
$ sh import_extention.sh < ext.txt
```

### export

```bash
$ sh export_extension.sh > ext.txt
```

## settings.json/keybindings.json

### settings.json

```bash
$ rm ~/Library/Application\ Support/Code/User/settings.json
$ ln -s ./settings.json  ~/Library/Application\ Support/Code/User/settings.json
```

### keybindings.json

```bash
$ rm ~/Library/Application\ Support/Code/User/keybindings.json
$ ln -s ./keybindings.json  ~/Library/Application\ Support/Code/User/keybindings.json
```
