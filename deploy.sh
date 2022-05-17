#!/bin/sh 
cp /mnt/c/Users/18301/OneDrive/Common/SJTU\ File/semester\ 3/VE203/Note/Class-note.pdf ./source/_posts/VE203-Note/
cp /mnt/c/Users/18301/OneDrive/Common/SJTU\ File/semester\ 3/VE401/Note/Class-note.pdf ./source/_posts/VE401-Note/
hexo cl
hexo g

/usr/bin/expect <<EOF
    set time 30
    spawn hexo d
    expect "Username for 'https://github.com': "
    send "Chen-Yulin\r"
    expect "Password for 'https://Chen-Yulin@github.com': "
    send "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\r"
    expect eof
EOF

