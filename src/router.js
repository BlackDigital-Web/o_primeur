import { Router } from 'express';
import {appController} from './controllers/appController.js'

const router = Router();

router.get('/', appController.index);

router.get('/categorie/:name', (req, res) =>{
    const nameUrl = req.params.name;
    const category = [
        'fruits',
        'legumes',
    ]
    const foundName = category.find(name =>
        name.toLowerCase() === nameUrl.toLowerCase()
        )

    if(foundName === 'fruits'){
        res.render('fruits');
    }else {
        res.render('legumes');
    }
})
    

export {router};