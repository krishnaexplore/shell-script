#!/bin/bash

func()
{
  CODE=$(curl -sSL -w '%{http_code}' -o json.json https://httpbin.org/status/500)
  if [[ "$CODE" =~ ^2 ]]; then
      # Server returned 2xx response
      #do_something_with binary.tar.gz
      echo "SUCCESS"
  elif [[ "$CODE" = 404 ]]; then
      # Server returned 404, so compiling from source
      echo "404"
  else
      echo "ERROR"
      exit 1
  fi

  echo $CODE
}

d=$(func)
if [[ $d == 'SUCCESS']]
then
    echo "call was success"
else
    echo "call was failed"
fi
