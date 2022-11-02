#!/bin/bash

input="user.dat"

while IFS="," read -r username userid groupid comment
do
  echo "Adding $username"
  useradd -u "$userid" -g "$groupid" -c "$comment" -s "/bin/bash" -m "$username"
done < $input
