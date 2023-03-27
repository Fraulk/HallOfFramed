#!/bin/bash

if [ -f src/firebase.js ]
then
    rm src/firebase.js
fi

## then build the file one line at a time:

echo "const firebaseConfig = {" >> src/firebase.js
echo "  apiKey: \"${apiKey}\"," >> src/firebase.js
echo "  authDomain: \"${authDomain}\"," >> src/firebase.js
echo "  databaseURL: \"${databaseURL}\"," >> src/firebase.js
echo "  projectId: \"${projectId}\"," >> src/firebase.js
echo "  storageBucket: \"${storageBucket}\"," >> src/firebase.js
echo "  messagingSenderId: \"${messagingSenderId}\"," >> src/firebase.js
echo "  appId: \"${appId}\"," >> src/firebase.js
echo "};" >> src/firebase.js
echo "export default firebaseConfig" >> src/firebase.js