[Documents]

path = /share/Documents
force user = smbuser
force group = smbgroup
public = yes
writable = no

[Public]

path = /share/Public
force user = smbuser
force group = smbgroup
create mask = 0664
force create mode = 0664
directory mask = 0777
force directory mode = 0777
public = yes
writable = yes
