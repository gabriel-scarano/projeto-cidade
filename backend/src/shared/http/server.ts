import express from 'express';
import cors from 'cors';
import 'dotenv';
import router from './routes';

const app = express();

app.use(cors());
app.use(express.json());

app.use(router);

const port = 5000;

app.listen(port, () => {
    console.log(`Server rodando em http://localhost:${port}`);
});