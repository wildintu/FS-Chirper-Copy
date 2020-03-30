import { Query } from './index';

const all = async () => 
Query('SELECT * FROM users l JOIN chirps u ON u.userid = l.id ORDER BY u.id ASC');

const one = async (id: number) =>
Query('SELECT * FROM users l JOIN chirps u ON u.userid = l.id WHERE u.id = ?', [id])

const post = async (userid: number, text: string, location: string) => 
Query(`INSERT INTO chirps(userid, text, location) VALUES(${userid}, '${text}','${location})`)

const put = async (id: number, userid: number, text: string, location: string) =>
Query(`UPDATE chirps SET userid=${userid}, text='${text}', location='${location}' WHERE id =?`,[id])

const del = async (id: number) =>
Query('DELETE FROM chirps WHERE id =?', [id])


export default {
    all,
    one,
    post,
    put,
    del
}