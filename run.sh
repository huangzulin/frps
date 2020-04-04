
#!/bin/sh

if [[ -n "${token}" ]]; then
    echo "authentication_method = token" >> /etc/frps.ini
    echo ${token} >> /etc/frps.ini
fi

/usr/local/frps -c /etc/frps.ini