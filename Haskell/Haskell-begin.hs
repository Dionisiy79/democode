module Main where  

-- Однострочный комментарий
{- Многострочный 
комментарий -} 

{-
    {  exp1; -- Полный синтаксис
    exp2;
    }

    exp1_part1    -- Краткий синтаксис. Эквиваленто {exp1_part1 exp1_part2 exp1_part3; exp2;
        exp1_part2  -- т.е. части выражения можно записать со следующей строки, сделав отступ вправо пробелами. Отступ вправо относительно начала выражения означает игнорирование переноса строки.
      exp1_part3  -- Следующая часть выражения должна начинаться не правее предыдущей. Правее означает "{" Отступ влево до уровня начальной строки блока означает "}".  Отсутствие отступа вправо относительно предыдущей строки означает ";"
    exp2          
-}

main = do putStr "Hello, World! "  -- Вывод строки в консоль без перевода строки
          putStrLn "Hello, World!" -- и с переводом строки.
          print 3.14               -- Вывод произвольных типов (чисел и пр.)
          main2                    -- Для соблюдения порядка обучения остальные выражения будут определены далее в функции main2 и выполнены здесь. 
                                   -- Такое возможно вследствие ленивых (отложенных) вычислений.
          
{- **********************
    РАБОТА С ПЕРЕМЕННЫМИ  
   ********************** -}

-- Объявление переменной (идентификатор переменной должен начинаться с малой латинской буквы  и может содержать буквы, цифры, символы подчеркивания и одинарных кавычек)
numb1 :: Integer    -- Целое число в диапазоне (-2^31,2^31-1)
numb1' :: Int       -- Целое число большой разрядности (-∞,∞)
numb2 :: Float      -- Вещественное число (7 знаков после запятой)
numb2' :: Double    -- Вещественное число (16 знаков после запятой)
numb3, numb3' :: Rational   -- Дробное число
letter_1 :: Char    -- Символ
bool1 :: Bool       -- Логическое значение (True, False)

-- Инициализация переменной
numb1 = 123
numb1' = 123456789123456789  -- В проинициализированную переменную нельзя записать другое значение, поэтому нужно использовать новое имя
numb2 = 123.456
numb2' = 123.12345678912345
letter_1 = 'ф'
bool1 = True
bool2 = False
str1 = "Тестовая строка";    -- Используются двойные кавычки. Строковая переменная является списком типа Char

-- Арифметические операторы
numb1a = 1 + 2 - 3 * 4    -- Классическая запись
numb2a = (+) 1 2          -- Запись в виде функции с двумя аргументами (разделяются пробелом)
numb3a = div 31 8         -- Функция div возвращает целую часть от результата деления (целое число). 
numb4a = mod 31 8         -- Функция mod возвращает остаток от деления (целое число). 
numb5a = 31 / 8           -- Вещественное деление. Результат - вещественное число. 
numb3 = 2 / 3             -- Дробное деление (для переменных типа Rational)
numb3' = numb3 + 4 / 5    -- Над дробями тоже можно производить арифметические операции (результат = 22 % 15)
numb6a = 2 ^ 3            -- Возведение в целочисленную степень 
numb7a = 2 ** 3.5         -- Возведение в дробную степень"

-- Операторы сравнения и логические операторы
bool1a = (1 == 1) == True                -- Равенство
bool2a = (1 /= 1) == False               -- Неравенство
-- Больше/меньше
bool3a =  not (1 == 2) == True            -- Логическое "НЕ" (отрицание)
bool4a = (1 >= 1) && (2 > 1) == True     -- Логическое "И" (конъюнкция)
bool5a = (1 <= 1) || (2 < 1) == True     -- Логическое "ИЛИ" (дизъюнкция)

-- Операции над строками
str2 = str1 ++ "2" -- Конкатенация строк

{- ********************
    ОБЪЯВЛЕНИЕ ФУНКЦИЙ  
   ********************
   (идентификатор функции должен начинаться с малой латинской буквы и может содержать буквы, цифры, символы подчеркивания и одинарных кавычек) -} 

-- Объявление типа функции и её аргументов
tg :: Double -> Double                  -- Один аргумент Double и результат Double
summ_sqr :: Int -> Int -> Int                 -- Два аргумента Int и результат Int
arif_mean3 :: Int -> Int -> Int -> Float  -- Три аргумента Int и результат Float
divMod2' :: (Int, Int) -> (Int, Int)     -- Аргумент и результат - кортежи


-- Определение функций с помощью уравнений
tg x = sin x / cos x                            -- Здесь используются штатные функцие sin и cos
summ_sqr a b = a^2 + b^2                        -- Несколько аргументов разделяются пробелами
arif_mean3 a b c = fromIntegral(a + b + c) / 2  -- Функция fromIntegral преобразует тип числа для приведения к необходимому типу (в данном случае к float)
divMod2' (a, b) = (a `div` b, a `mod` b)        -- Здесь штатные функции div и mod записаны в виде бинарных операций (используются обратные одинарные кавычки)

-- Использование функций в выражениях
numb1b = tg (3.14 / 4) - 2.15
numb2b = 3 + arif_mean3 4 6 7   -- Знак пробела после имени функции имеет наивысший приоритет и поэтому скобки можно опустить
numb3b = divMod2' (1458, summ_sqr 2 3) -- В аргументе можно вложить другую функцию
numb4b = (+) 1 2                -- Запись бинарной операции сложения в виде функции
numb5b = summ_sqr 12 4 
numb6b = 12 `div` 4          -- Запись двухаргументной функции в виде бинарной операции (используются обратные одинарные кавычки)


{- ******************************************
    ОРГАНИЗАЦИЯ ВЕТВЛЕНИЙ В ЛОГИКЕ ПРОГРАММЫ
   ****************************************** -} 

-- Выбор между двумя условиями (numb1b сравнивается с образцом)  
numb1c = if numb1b > 0.5 then 100 else 50 

-- Организация рекурсии используя тернарное условие. В данных примерах фактически получается цикл со счётчиком n.
factorial :: Integer -> Integer     -- Вычисление факториала от n
factorial n = if n==0 then 1
                      else n * (factorial (n-1))
sumN :: Integer -> Integer           -- Вычисленние суммы натуральных чисел от 0 до n                      
sumN n = n + if n == 0 then 0 else sumN (n-1)   

-- Выбор между несколькими условиями      
numb2c | numb1b == 0   = 0  -- Каждая из проверок является сторожем, который следит за необходимостью окончания работы проверок
       | numb1b <= 0.5 = 50
       | numb1b > 0.5  = 100
       | otherwise     = -200  -- Присвоение значение по умолчанию, если предыдущие сторожа не сработали
       
-- Организация рекурсии используя несколько условий 
factorial2 :: Integer -> Integer  -- Вычисление факториала с использованием сторожей
factorial2 n | n==0   = 1         -- Такой способ более надёжен по сравнению с тернарной проверкой, т.к. исключаются отрицательные числа
             | n>0    = n * (factorial2 (n-1))

-- Альтернативная форма записи, когда образцы задаются в независимых выражениях. При этом важен порядок их записи (частные случаи раньше общих):
factorial3 :: Integer -> Integer   
factorial3 0 = 0
factorial3 n = n * (factorial3 (n-1))

-- Прерывание выполнения программы
numb1d = if numb1c < 0 then error "Отрицательное число недопустимо" else 1    -- Псевдофункция error прерывает программу. Формально выдаёт результат любого типа
              
-- Цикл со счетчиком можно реализовать через рекурсию
arif :: Integer -> Integer
arif n = if n==0 then 0
                 else n + (arif (n-1))
test = (arif 0, arif 2, arif 5)

-- Организация рекурсии со вспомогательной функцией для хранения промежуточного значения. Пример функции проверки числа на простоту: в промежуточном значении хранится число, до которого произведена проверка на то, является ли оно делителем:
prime  :: Integer -> Bool
prime' :: Integer -> Integer -> Bool
prime p     | p <= 0          = error "Ошибка функции prime: задано не положительное число"
            | otherwise       = prime' p 2
prime' p d  | d * d > p       = True
            | p `mod` d == 0  = False
            | otherwise       = prime' p (d+1)
            
{- ******************
    ОБРАБОТКА ДАННЫХ 
   ****************** -}             

-- Преобразование типов

numb2d = fromIntegral numb1 + 3.5 -- Функция fromIntegral получает на вход целое число и выдаёт число нужного типа (в контексте выражения).

numb3d = truncate 3.7  -- Получение целой части числа
numb4d = round 3.7     -- Округление до ближайшего целого
numb5d = ceiling 3.7   -- Округление до ближайшего целого сверху
numb6d = floor 3.7     -- Округление до ближайшего целого снизу

numb7d = fromRational numb3  -- Функция fromRational получает на вход дробное число и выдаёт число нужного типа (в контексте выражения).

numb8d = fromEnum True -- Функция fromEnum перобразует перечислимое значение в целое число



