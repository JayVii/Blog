# Man Emacs

## Emacs as a Daemon

### SystemD

`$HOME/.config/systemd/user/emacs.service`:

```
[Unit]
Description=Emacs text editor
Documentation=info:emacs man:emacs(1) https://gnu.org/software/emacs/

[Service]
Type=forking
ExecStart=/usr/bin/emacs --daemon
ExecStop=/usr/bin/emacsclient.emacs --eval "(kill-emacs)"
Restart=on-failure

[Install]
WantedBy=default.target
```

### Bash-Script

```{.sh}
#!/usr/bin/env sh
if [ -z $(pidof emacs) ]; then
    emacs --daemon
fi
```

### Menu-Entry

`/usr/share/applications/emacs.desktop`:

```
[Desktop Entry]
Version=1.0
Name=GNU Emacs
GenericName=Text Editor
Comment=GNU Emacs is an extensible, customizable text editor - and more
MimeType=text/english;text/plain;text/x-makefile;text/x-c++hdr;text/x-c++src;text/x-chdr;text/x-csrc;text/x-java;text/x-moc;text/x-pascal;text/x-tcl;text/x-tex;application/x-shellscript;text/x-c;text/x-c++;
TryExec=/usr/bin/emacsclient -c
Exec=/usr/bin/emacsclient -c %F
Icon=emacs
Type=Application
Terminal=false
Categories=Utility;Development;TextEditor;
StartupWMClass=Emacs
Keywords=Text;Editor;
```
