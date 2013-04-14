echidna-ruby
============

## $logger

We use SyslogMlLogger for logging. It has the same logging API of Logger, not Syslog. So if your app update to use the latest echidna-env, you need to replace these calls in your code:

    $logger.notice => $logger.info
    $logger.warning => $logger.warn
    $logger.err => $logger.error

For more details check https://github.com/Daniel304/syslog-ml-logger/blob/master/lib/syslog-ml-logger.rb

Since syslogd of Mac OS X Mountain Lion only log above notice level, you'll need to configure it log info level. Edit /etc/asl.conf, search "system.log" and find these lines:

    # emergency - notice get saved in system.log
    ? [<= Level notice] file /var/log/system.log

Change the "Level notice" to "Level info", save it then run `sudo pkill -HUP syslogd` to restart syslogd.
