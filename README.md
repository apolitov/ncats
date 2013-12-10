# 9cats

Для статической генерации сайта используется [DocPad](http://docpad.org/).
Для ассетов используется [Grunt](http://gruntjs.com/).
Препроцессор стилей — [Compass](http://compass-style.org/) (фреймворк для [Sass](http://sass-lang.com/)).
Язык шаблонов — [eco](https://github.com/sstephenson/eco).


## Установка
1. Установить [node.js](http://bevry.me/learn/node-install)
```
sudo apt-get install nodejs
```
2. Клонировать репозиторий
```
cd ~/path-to-this-repository-local-copy/
git clone git@github.com:apolitov/ncats.git
```
3. Установить зависимости (npm должен был установиться вместе с node.js)
```
cd ~/path-to-this-repository-local-copy/
npm install
```


## Структура
Содержимое сайта располагается в папке `src`:
```
\src
	\documents 		# пользовательские тексты для разделов, минимизируемые скрипты и стили
	\files			# неизменяемые файлы, не требующие компиляции — картинки, js библиотеки и т.д.
	\layouts		# шаблоны основных разделов, заполняемые забивками из \documents
	\partials		# небольшие html файлы, из которых состоят шаблоны в \layouts
```
Для минимизации файлов используйте настроенный grunt, добавляя css и js файлы по аналогии в файл `grunt-config`.


## Генерация контента
Сайт будет собран и готов для размещения в папке `/out` после выполнения команды
```
docpad generate
```