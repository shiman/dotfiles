配置 MSYS2
=====

## MYSYS2 安装

## 系统升级

```bash
pacman -Syu
```

### 修改主目录

```bash
sed -i -r -e 's/db_home:.*$/db_home: windows/g' /etc/nsswitch.conf
find /home/`basename $HOME` -name ".*" | xargs -I{} cp -r {} $HOME
```

然后重启。

### 颜色


