﻿// Однострочный комментарий до конца строки
/* Многострочный комментарий - обрамляется парой символов (звезда и косая черта) */

using System;

namespace ConsoleApp_demo   // Ключевым словом namespace задаётся пространство имён для набора связанных объектов (классов и пр.)
{                           // Фигурными скобками {} задаётся начало и конец логического блока
    class Program           // Ключевым словом class объявляется имя класса (элемента программы, описывающего абстрактный тип данных)
    {
        // Ключевым словом static задаётся статичность (в данном случае для метода(функции) Main) - для того чтобы можно было вызывать его без создания объектов
        // void - пустой тип данных. Используется для задания методов, которые ничего не возвращают.
        // string - тип для строковых переменных. string[] -  массив строк
        static void Main(string[] args)
        {

            /* Комманды взаимодействия с пользователем */
            // Вывод текстовых строк
            Console.Write("Hello, world!");         // Вывод текста в консоль без переноса строки
            Console.WriteLine("Hello, world!");     // и с переносом строки

            /* Объявление имён изменяемых переменных. Допустимо в любом месте кода */
            // Целые числа
            sbyte numb_1b;      // 1 байт  (                 -128 .. 127                 )
            short numb_2b;      // 2 байта (               -32768 .. 32767               ) 
            int numb_4b;      // 4 байта (          -2147483648 .. 2147483647          ) 
            long numb_8b;      // 4 байта ( –9223372036854775808 .. 9223372036854775807 ) 
            byte numb_1b_p;   // 1 байт без знака  ( 0 .. 255   )
            ushort numb_2b_p;   // 2 байта без знака ( 0 .. 65535 )
            uint numb_4b_p;   // 4 байта без знака ( 0 .. 4294967295 )
            ulong numb_8b_p;   // 8 байт без знака  ( 0 .. 18446744073709551615 )

            // Вещественные числа
            float rnumb_4b;     // 4 байта ( 2,9*10^-39   .. 1,7*10^38   ) - с плавающей точкой
            double rnumb_8b;    // 8 байт  ( 5,0*10^-324  .. 1,7*10^308  )
            decimal rnumb_8bf;  // 16 байт ( –7,9*10^−28 до 7,9*10^28, с точностью до 28 цифр ) - с фиксированной точкой

            // Логические типы
            bool bool1, bool2;  // Принимает значения true, false
            bool? bool3;        // Принимает значения true, false и null

            // Символьный тип
            char letter1;       // 2 байта. Все символы кодировки UTF-16
                                // Строка
            string str1;   // Строка (одномерный массив из символов)

            int i, j, factorial1;


            /* Инициализация переменных (без инциализации переменные нельзя использовать для чтения) */
            numb_1b = 123;
            numb_4b = 1234567890;
            numb_8b = 1_234_567_890;   // Для наглядности число можно разделить на тысячи   
            rnumb_8b = 12345.7894568;  // В качестве разделителя используется точка
            rnumb_8b = 78954.123545;   // Проинициализированную переменную можно перезаписать новым значением
            rnumb_4b = 456.789F;       // Для прямого сохранения числа в переменную типа float в конце числа нужно добавить букву F

            numb_2b = 0xF57;           // Шестнадцатеричное число начинается с символов 0x
            numb_2b = 0b10011110;      // Двоичное число начинается с символов 0b

            bool1 = true; bool2 = false;
            letter1 = 'Ф';             // Используются одинарные кавычки  
            str1 = "Тестовая строка";  // Используются двойные кавычки  

            // Console.WriteLine(numb_8b);

            /* Использование переменных */
            numb_2b = numb_1b; // Запись значения переменной в другую переменную.
            rnumb_4b = rnumb_4b / numb_4b; // В выражениях для присвоения нового значения можно использовать эту же переменную, пока в ней хранится старое значение.
            // Вывод значения на экран консоли
            Console.WriteLine(rnumb_4b);    // Простой вывод одной переменной.
            Console.WriteLine(" Буква {0}, строка '{1}', значение {2}", letter1, str1, bool2);    // Для вывода нескольких переменных используются постановочные аргументы в фигурных скобках. Нумерация начинается с 0
            // Использование значений переменных в арифметических выражениях
            rnumb_8b = rnumb_8b / numb_4b;
            Console.WriteLine(rnumb_8b * 100);
            Console.ReadLine();                     // Запрос пользователю ввести строку текста


        }
    }
}
