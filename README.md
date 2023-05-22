# Криптоконвертер

Криптоконвертер - это мощный инструмент для быстрой и удобной конвертации криптовалют.

## Как использовать?

Просто запустите скрипт и передайте ему три аргумента:

1. Количество токенов, которое вы хотите конвертировать.
2. Название токена, который вы хотите конвертировать (Для биткойна это bitcoin, для эфириума - ethereum).
3. Название токена, в который вы хотите конвертировать.

<aside>
🔥 На данный момент скрипт не поддерживает символы токенов (BTC, ETH, APT) и токены с двумя словами в названии
</aside>

Например, если вы хотите конвертировать 1 биткоин в эфириум, запустите скрипт таким образом:

```bash
./crypto_converter.sh 1 bitcoin ethereum
```

## Как работает скрипт?

Скрипт использует API [CoinCap.io](https://coincap.io/) для получения актуальной цены на токен и конвертирует введенное количество токенов в указанный токен.

## Особенности

- Скрипт проверяет существование введенных токенов и выводит сообщение об ошибке, если токен не найден.
- При вводе отрицательного или нулевого количества токенов, скрипт также выводит сообщение об ошибке.
- Криптоконвертер работает быстро и точно, используя только одну команду.
- Скрипт написан на Bash, что делает его доступным для всех пользователей операционных систем на основе Unix.

## Требования

Для работы криптоконвертера необходимо наличие установленных пакетов `curl` и `jq`. Вы можете установить их с помощью вашего менеджера пакетов.

## Отказ от ответственности

Скрипт предназначен только для ознакомительных целей. Автор не несет ответственности за любые убытки, связанные с использованием этого скрипта.

## Поддержка

Если у вас есть какие-либо вопросы или проблемы с использованием криптоконвертера, не стесняйтесь обращаться к автору через [GitHub Issues](https://github.com/user/repo/issues).
