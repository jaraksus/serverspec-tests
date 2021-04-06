## vpipe-devops

**Команда**:
* Судаков Дмитрий
* Лаврик-Кармазин Максим
* Рябков Дмитрий
* Меннибаев Амир
* Гулевич Дмитрий

---

### task4

Сборка образа:

```
docker build -t vpipe-toolchain --build-arg USER_ID=$UID toolchain
```

Инструкция по запуску контейнера:

- запустить контейнер первый раз, заменив `<NAME>` и `<WORK_DIR>` на имя контейнера и путь к рабочей директории:

```
docker run -it --name <NAME> -v <WORK_DIR>:/work vpipe-toolchain
```

- инициализировать gcloud:

```
gcloud init
gcloud container clusters get-credentials vpipe-develop
exit
```

- после этого к контейнеру можно подключаться следующим образом:

```
docker start -i <NAME>
```
