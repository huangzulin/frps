
#!/bin/sh

if [[ -z "${TOKEN}" ]]; then
    echo "authentication_method = token" >> /etc/frps.ini
    echo ${TOKEN} >> /etc/frps.ini
fi

/usr/local/frps -c /etc/frps.ini