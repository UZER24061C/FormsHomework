&НаКлиенте
Процедура ПроектыБезРуководителя(Команда)	
	ПроектыБезРуководителяНаСервере();		  
КонецПроцедуры

 &НаСервере
Процедура ПроектыБезРуководителяНаСервере()

	Отбор = Список.КомпоновщикНастроек.Настройки.Отбор;
	ОтборПоРук = Неопределено;
	ПолеРук = Новый ПолеКомпоновкиДанных("Руководитель");
	Для Каждого ЭлементОтбора Из Отбор.Элементы Цикл
		Если ТипЗнч(ЭлементОтбора) = Тип("ЭлементОтбораКомпоновкиДанных") 
			и ЭлементОтбора.ЛевоеЗначение = ПолеРук Тогда
			
			ОтборПоРук = ЭлементОтбора;
			Прервать;
		КонецЕсли;
	КонецЦикла;			
	
	ОтборПоРук.ПравоеЗначение = ПредопределенноеЗначение("Справочник.ФизическиеЛица.ПустаяСсылка");
	ОтборПоРук.Использование = Не ОтборПоРук.Использование;
	Элементы.ФормаПроектыБезРуководителя.Пометка = ОтборПоРук.Использование;
КонецПроцедуры

&НаСервере
Процедура ПередЗагрузкойПользовательскихНастроекНаСервере()
	
    Отбор = Список.КомпоновщикНастроек.Настройки.Отбор;
	ПолеОрг = Новый ПолеКомпоновкиДанных("Организация"); 
	Для Каждого ЭлементОтбора Из Отбор.Элементы Цикл
		Если ТипЗнч(ЭлементОтбора) = Тип("ЭлементОтбораКомпоновкиДанных") 
			и ЭлементОтбора.ЛевоеЗначение = ПолеОрг Тогда
			
			ОтборПоОрг = ЭлементОтбора;
			Прервать;
		КонецЕсли;
	КонецЦикла;	
    ОтборПоОрг.Использование = Ложь;
	ОтборПоОрг.ПравоеЗначение = Константы.ОсновнаяОрганизация.Получить();

	
КонецПроцедуры

// ■ □