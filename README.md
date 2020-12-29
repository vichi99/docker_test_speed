# Popis

Jelikož jsem zvědavý a [docker](https://www.docker.com/) se chová rozdílně na různých platformách, obzvlášť na macOS, rozhodl jsem se vytvořit jednoduchý `docker-compose` soubor, kterým můžu otestovat jeho časovou náročnost. Výsledky jsou pouze pro moji orientaci.

# Postup
1. Stáhni repozítář
    ```
    $ git clone https://github.com/vichi99/docker_test_speed.git
    $ cd docker_test_speed 
    ```
1. Stáhni již hotový node image, aby neměl vliv na čas měření.
    ```sh
    $ docker pull node:14-alpine
    ```
1. Spusť command a zační měřit čas ``T1`` (někde bokem např. na mobilu).
    ```sh
    $ docker-compose up
    ```
1. Jakmile se kompletně spustí kontejner do stavu viz. ['správné-zobrazení'](#správné-zobrazení) níže zapiš si čas ``T1``. Může trvat několik minut.

2. Vypni kontejner pomocí.
    ```sh
    ctrl + c
    ```
3. Znovu spusť kontejner a až naběhne zapiš čas ``T2``.
    ```sh
    $ docker-compose up
    ```
4. Vypni kontejner pomocí.
    ```sh
    ctrl + c
    $ docker-compose down -v
    ```
5. Znovu spusť kontejner a až naběhne zapiš čas ``T3``.
    ```sh
    $ docker-compose up
    ```
6. Proveď [Clear](#clear) a zopakuj ještě jednou.
   
7. Časy mi pošli nebo ideálně proveď pull request s popisem tvého pc do tabulky, Díky.

# Clear
- Pro smázání kontejneru a image
    ```sh
    $ docker-compose down -v
    $ docker rmi test:latest
    ```

# Výsledky

| Typ PC  | systém | T1            | T2            | T3            | pokus |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| Macbook Air 13-inch 2015 8GB RAM | macOS - Catalina | 9:45          | 25            | 55            | 1. |
| ---- | ---- | 4:20          | 16            | 40            | 2. |
| ---- | ---- |3:45          | 28            | 37            | 3. |
| Macbook Pro 13-inch 2017 8GB RAM | macOS - Catalina | 3:55          | 13            | 22            | 1. |
| ---- | ---- | 3:30          | 17            | 29            | 2. |
| Výkonný Stolní Windows PC 16GB RAM | Xubuntu in VM | 1:23          | 10            | 16            | 1. |
| Macbook Pro 13-inch 2020 16GB RAM 4x Thunderbolt | macOS - Bug Sur | 1:50          | 9            | 17           | 1. |
| ---- | ---- | 1:47          | 9            | 14           | 2. |

# Správné zobrazení
![](test.png)
