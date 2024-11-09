import pg from 'pg';

const { Client } = pg;

// * Le client à besoin de l'url de la BDD pour se connecter.
const client = new Client(process.env.PG_URL);

client.connect();

export { client };