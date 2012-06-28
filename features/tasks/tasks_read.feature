# language: ru
Функционал: Вывод задач
  Чтобы не запоминать все что нужно сделать
  Я хочу видеть все задачи, запланированные
  на семь дней начиная с сегодня или на 
  выбранный день, а так же возможность 
  отфильтровать их по важности и статусу 
  выполнения
  
  Предыстория:
    Допустим сейчас дата "27.06.2012"
    И в базе есть задачи:
      |дата       |важно|выполнено|название           |описание               |                            
      |27.06.2012 |0    |1        |накормить богатых  |Бизнес-план усиливает  |
      |27.06.2012 |0    |1        |помыть посуду      |опыт западных коллег   |
      |28.06.2012 |0    |0        |побывать всюду     |уравновешивает имидж   |
      |28.06.2012 |1    |0        |подбить баклуши    |часть производства     |
      |30.06.2012 |0    |0        |сделать суши       |Объемная скидка        |
      |01.07.2012 |1    |0        |починить уши       |Сущность и концепция   |
      |02.07.2012 |1    |0        |тетя груша         |аналитическая система  |
      |14.07.2012 |0    |0        |послушать буша     |системный анализ       |

  Сценарий: Вывод задач на текущий день по умолчанию
    Если я захожу по адресу "/"
    И я вижу следующие задачи:
      |накормить богатых  |
      |помыть посуду      |
    Но не вижу следующие задачи:
      |побывать всюду     |
      |подбить баклуши    |
      |сделать суши       |
      |починить уши       |
      |тетя груша         |
      |послушать буша     |
      
  Сценарий: Вывод календаря и ссылок на сдледующий и предыдущий месяц
    Если я захожу по адресу "/"
    То я вижу текст "Июнь" в блоке ".calendar"
    И я вижу ссылки "27, 28" в блоке ".calendar"
    И я вижу текст "26" в блоке ".calendar"
    Но я не вижу ссылку "26" в блоке ".calendar"
    И я вижу ссылку "←" в блоке ".calendar"
    И я вижу ссылку "→" в блоке ".calendar"
    
  Сценарий: Вывод задач на выбранный день
    Если я захожу по адресу "/"
    И я нажимаю на ссылку "28" в блоке ".calendar"
    То я вижу следующие задачи:
      |побывать всюду     |
      |подбить баклуши    |


    