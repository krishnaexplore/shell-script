#!/bin/bash
# system_info page - A script to produce an system information HTML file

####### Constansts

TITLE="System information for $HOSTNAME"
RIGHT_NOW="$(date +"%x %r %Z")"
TIME_STAMP="Updated on $RIGHT_NOW by $USER"

### Functions

system_info()
{

  echo "<h2> System update </h2>"
  echo "<pre>"
  uptime
  echo "</pre>"
}

show_uptime()
{

  return

}

drive_space()
{
  return
}

home_space()
{

  return
}

###### Main
cat <<- __EOF__
  <html>
  <head>
    <titel>$TITLE</title>
  </head>

  <body>
    <h1>$TTITLE</h1>
    <p>$TIME_STAMP</p>
    ${system_info}
    ${show_uptime}
    ${drive_space}
    ${home_space}
  </body>
  </html>
__EOF__


