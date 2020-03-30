import * as express from 'express';
import apiRouter from './routes';
import * as cors from 'cors';
import * as path from 'path';

const app = express();

app.use(cors());
app.use(express.json())
app.use(express.static('public'));
app.use(apiRouter);
app.get(["/","/Forms","/Posts/:id/admin"], (req, res) => res.sendFile(path.join(__dirname, '../public', 'index.html')))

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Server listening on port: ${port}`));

