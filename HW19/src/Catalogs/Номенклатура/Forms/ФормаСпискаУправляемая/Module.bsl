
&НаКлиенте
Процедура СписокГруппПриАктивизацииСтроки(Элемент)
	
	ПодключитьОбработчикОжидания("ПриАктивизацииСтрокиЗавершение", 0.1, Истина);
	
КонецПроцедуры

&НаКлиенте
Процедура ПриАктивизацииСтрокиЗавершение()

	Список.Параметры.УстановитьЗначениеПараметра("Родитель",  Элементы.СписокГрупп.ТекущаяСтрока);	
	
КонецПроцедуры // ПриАктивизацииСтрокиЗавершение()

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Список.Параметры.УстановитьЗначениеПараметра("Родитель", Справочники.Контрагенты.ПустаяСсылка());
	
КонецПроцедуры


















