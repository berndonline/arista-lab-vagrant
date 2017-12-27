#!/bin/bash

EXIT=0
vagrant up spine-1 --color <<< 'spine-1 boot' || EXIT=$?
vagrant up spine-2 --color <<< 'spine-2 boot' || EXIT=$?
sleep 30
vagrant up edge-1 --color <<< 'edge-1 boot' || EXIT=$?
vagrant up edge-2 --color <<< 'edge-2 boot' || EXIT=$?
sleep 30
vagrant up leaf-1 --color <<< 'leaf-1 boot' || EXIT=$?
vagrant up leaf-2 --color <<< 'leaf-2 boot' || EXIT=$?
vagrant up leaf-3 --color <<< 'leaf-3 boot' || EXIT=$?
vagrant up leaf-4 --color <<< 'leaf-4 boot' || EXIT=$?
vagrant up leaf-5 --color <<< 'leaf-5 boot' || EXIT=$?
vagrant up leaf-6 --color <<< 'leaf-6 boot' || EXIT=$?
echo $EXIT
exit $EXIT
