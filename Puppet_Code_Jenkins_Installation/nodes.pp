node default {
    case $::operatingsystem {
        'Debian' : { include jenkins }
        default  : { notify {"$::Currently supporting debian OS only":} }
    }
}