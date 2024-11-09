import express from 'express';
import 'dotenv/config.js'
import pg from 'pg'
import { router } from './src/router.js';

const server = express();

server.set('view engine', 'ejs');
server.set('views', 'src/views');

server.use(express.static('public'));

server.use(router);

const port = process.env.PORT || 3000;
const baseUrl = process.env.BASE_URL || 'http://127.0.0.1:5500'

server.listen(port, () =>{
    console.log(`Server en marche sur ${baseUrl}:${port}`);
})
