#!/bin/bash
#
# god       Startup script for god (http://god.rubyforge.org)
#
# chkconfig: - 85 15
# description: God is an easy to configure, easy to extend monitoring \
#              framework written in Ruby.
#

GOD_BIN=/home/agideo/.rbenv/shims/god
RUBY_BIN=/home/agideo/.rbenv/shims/ruby
RETVAL=0

# Go no further if config directory is missing.
case "$1" in
    start)
      # Create pid directory
      $RUBY_BIN $GOD_BIN -c /etc/god.conf
      RETVAL=$?
  ;;
    stop)
      $RUBY_BIN $GOD_BIN terminate
      RETVAL=$?
  ;;
    restart)
      $RUBY_BIN $GOD_BIN terminate
      $RUBY_BIN $GOD_BIN -c /etc/god.conf
      RETVAL=$?
  ;;
    status)
      $RUBY_BIN $GOD_BIN status
      RETVAL=$?
  ;;
    *)
      echo "Usage: god {start|stop|restart|status}"
      exit 1
  ;;
esac

exit $RETVAL