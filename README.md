# instalace dockeru
1. Stáhni docker z https://www.docker.com

2. Nainstaluj docker (MacOS - zkopíruj docker do Applications)

3. Spusť docker, např. cmd + space --> docker

4. Po spuštění dockeru se na ve stavovém panule objeví logo velryby, následně je možné v novém okně Terminálu používat `docker` příkazy


# naklonuj tento repo

```
$ git clone https://github.com/vichi99/docker_test_speed.git
$ cd docker_test_speed 
```

# docker_test_speed
1. Stáhni již hotový node image, aby neměl vliv na čas měření.
    ```sh
    $ docker pull node:14-alpine
    ```
2. Spusť command a zační měřit čas ``T1``.
    ```sh
    $ docker-compose up
    ```
3. Jakmile se kompletně spustí kontejner do stavu viz. obr níže zapiš si čas ``T1``. Může trvat několik minut.
4. Vypni kontejner pomocí.
    ```sh
    ctrl + c
    ```
5. Znovu spusť kontejner a až naběhne zapiš čas ``T2``.
    ```sh
    $ docker-compose up
    ```
6. Vypni kontejner pomocí.
    ```sh
    ctrl + c
    $ docker-compose down -v
    ```
7. Znovu spusť kontejner a až naběhne zapiš čas ``T3``.
    ```sh
    $ docker-compose up
    ```
8. Proveď ``Clear`` a zopakuj až 3x, jak se ti chce.Pošli mi časy, Dík.

# Clear
- Pro smázání kontejneru a image
    ```sh
    $ docker-compose down -v
    $ docker rmi test:latest
    ```

# čas air 2015
   - 1. Pokus
     - T1 - ``9:45 minut``
     - T2 - ``25 sekund``
     - T3 - ``55 sekund``
   - 2. Pokus
     - T1 - ``4:20 minut``
     - T2 - ``16 sekund``
     - T3 - ``40 sekund``
   - 2. Pokus
     - T1 - ``3:45 minut``
     - T2 - ``28 sekund``
     - T3 - ``37 sekund``

# čas MacBook Pro (13-inch, 2017, Two Thunderbolt 3 ports), 2,3 GHz Dvoujádrový Intel Core i5, 8GB RAM, MacOS Catalina 10.15.7
    - 1. Pokus
     - T1 - ``3:55 minut``
     - T2 - ``13 sekund``
     - T3 - ``22 sekund``
    - 2. Pokus
     - T1 - ``3:30 minut``
     - T2 - ``17 sekund``
     - T3 - ``29 sekund``

# Správné zobrazení
![](test.png)
