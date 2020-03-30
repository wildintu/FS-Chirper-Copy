import { Query } from './index';

const all = async () => 
Query('SELECT * FROM chirps');

const one = async (id: string) =>
Query('SELECT * FROM chirps WHERE id = ?', [id])

const post = async (userid: number, text: string, location: string) => 
Query(`INSERT INTO chirps(userid, text, location) VALUES(${userid}, '${text}','${location})`)

const put = async (id: string, userid: number, text: string, location: string) =>
Query(`UPDATE chirps SET user=${userid}, text='${text}', location='${location}' WHERE id =?`,[id])

const del = async (id: string) =>
Query('DELETE FROM chirps WHERE id =?', [id])


export default {
    all,
    one,
    post,
    put,
    del
}