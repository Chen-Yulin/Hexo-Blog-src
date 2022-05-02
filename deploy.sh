#!/bin/sh 
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

