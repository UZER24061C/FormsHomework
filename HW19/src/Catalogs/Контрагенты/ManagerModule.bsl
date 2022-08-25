
Процедура ОбработкаПолученияПолейПредставления(Поля, СтандартнаяОбработка)
	
	СтандартнаяОбработка = Ложь;
	Поля.Добавить("Наименование");
	Поля.Добавить("ИНН");
	Поля.Добавить("ЭтоГруппа");
	
КонецПроцедуры

Процедура ОбработкаПолученияПредставления(Данные, Представление, СтандартнаяОбработка)
	
	Если Не Данные.ЭтоГруппа Тогда
		
		СтандартнаяОбработка = ложь;
		Представление = СокрЛП(Данные.Наименование)+" (ИНН: "+СокрЛП(Данные.ИНН)+")"; 
		
	КонецЕсли;
	
КонецПроцедуры
