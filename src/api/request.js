const { getDatabase, ref, child, get } = require("firebase/database")

const IMAGESAPI = 'https://raw.githubusercontent.com/originalnicodrgitbot/hall-of-framed-db/main/shotsdb.json';
const AUTHORSAPI = 'https://raw.githubusercontent.com/originalnicodrgitbot/hall-of-framed-db/main/authorsdb.json';
const axios = require('axios');

const timestamp = (new Date()).getTime();
export const getImages = async () => {
    const dbRef = ref(getDatabase());

    const response = await get(child(dbRef, "hall-of-fun"))
    if (response.exists())
        return response.val()
        // .then((shots) => {
        // })
        // .catch((error) => console.error(error))
};
export const getAuthors = () => axios.get(`${AUTHORSAPI}?timestamp=${timestamp}`);
