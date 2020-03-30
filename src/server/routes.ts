import * as express from 'express';
import db from './db';

const router = express.Router();

router.get('/api/hello', (req, res, next) => {
    res.json('World');
});

router.get('/api/chirps/:id?', async (req, res) => {
    let id = parseInt(req.params.id, 10);
    if (id) {
        try {
            res.json((await db.chirps.one(id))[0])
        } catch (err) {
            if (err) throw err;
            res.sendStatus(500);
        }
    } else {
        try {
            res.json(await db.chirps.all());
        } catch (err) {
            console.log(err)
            res.sendStatus(500)
        }
    }
})

router.post('/api/chirps', async (req, res) => {
    let userid = parseInt(req.body.userid, 10);
    let text = req.body.text;
    let location = req.body.location;
    try {
        res.json(await db.chirps.post(userid, text, location));
    } catch (err) {
        res.sendStatus(500);
    }
})

router.put('/api/chirps/:id?', async (req, res) => {
    let userid = parseInt(req.body.userid, 10);
    let text = req.body.text;
    let location = req.body.location;
    let id = parseInt(req.params.id,10);
    try {
        res.json(await db.chirps.put(id, userid, text, location));
    } catch (err) {
        console.log(err)
        res.sendStatus(500);
    }
})

router.delete('/api/chirps/:id?', async (req, res) => {
    let id = parseInt(req.params.id,10);
    if (id) {
        try {
            res.json((await db.chirps.del(id))[0])
        } catch (err) {
            if (err) throw err;
            res.sendStatus(500);
        }
    } 
})

export default router;