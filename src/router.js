import { Router } from 'express';
import {appController} from './controllers/appController.js';
import pages from '../data/pages.json' assert { type: 'json'};

const router = Router();

router.get('/', appController.index);

router.get('/categorie/:name', (req, res) =>{
    const nameUrl = req.params.name;
    const index = 'index';
    const foundName = pages.find(name =>
        name.toLowerCase() === nameUrl.toLowerCase()
        );
        
    if(foundName){
        console.log(foundName)
        console.log(pages.length);
        
        res.render(foundName, pages.index);
    }else {
        res.status(404).send('error404')
    }
})

export {router};