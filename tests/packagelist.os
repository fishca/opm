﻿#Использовать asserts
#Использовать "../src/core"

Перем юТест;

Функция ПолучитьСписокТестов(Знач Тестирование) Экспорт
	
	юТест = Тестирование;
	
	СписокТестов = Новый Массив;
	
	СписокТестов.Добавить("ТестДолжен_ПолучитьПакетыХаба");
	
	Возврат СписокТестов;
	
КонецФункции


Функция ТестДолжен_ПолучитьПакетыХаба() Экспорт
	
	МенеджерПолучения = Новый МенеджерПолученияПакетов();
	СписокПакетовХаба = МенеджерПолучения.ПолучитьДоступныеПакеты();
	
	Ожидаем.Что(СписокПакетовХаба.Количество()).Больше(1);
	Ожидаем.Что(СписокПакетовХаба.Получить("gitsync")).Равно(Истина);
	Ожидаем.Что(СписокПакетовХаба.Получить("opm")).Равно(Истина);
	Ожидаем.Что(СписокПакетовХаба.Получить("someelsepackadge")).Равно(Неопределено);
	
		
КонецФункции
