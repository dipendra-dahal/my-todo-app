import {pool} from '../helper/db.js'
import {Router} from "express"
import { emptyOrRows } from '../helper/utils.js'

const router = Router()

router.get('/',(req,res,next) => {
    pool.query('select * from task',(error, result)=> {
        if (error) {
            return next(error)
        }
        return res.status(200).json(emptyOrRows(result))
    })
})


export default router