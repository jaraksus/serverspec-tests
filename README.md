## vpipe-devops

**Команда**:  
* Судаков Дмитрий  
* Лаврик-Кармазин Максим  
* Рябков Дмитрий  
* Меннибаев Амир  
* Гулевич Дмитрий  

---

### task3-cms

Запуск vagrant-машин:
```
cd vagrant
vagrant up
```

Запуск salt-stack:
```
vagrant ssh
salt '*' state.highstate
```
(работает долго, можно закомментировать строку `- gcloud` в `/salt/state/top.sls`  
и в целом все state'ы там перечислены)

Проверка миньона:
```
vagrant ssh dev
...
```

