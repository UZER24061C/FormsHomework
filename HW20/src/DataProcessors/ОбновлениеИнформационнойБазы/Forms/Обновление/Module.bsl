
&НаКлиенте
Процедура ЗакрытьФормуОбновления(Команда)
	
	ЗакрытьФормуОбновленияНаСервере();
	ОбновитьИнтерфейс();
	
КонецПроцедуры

&НаСервереБезКонтекста
Процедура ЗакрытьФормуОбновленияНаСервере()
	
	НастройкиНачальнойСтраницыПользователя = ХранилищеСистемныхНастроек.Загрузить("Общее/НастройкиНачальнойСтраницыПользователя");
	
	Если НастройкиНачальнойСтраницыПользователя <> Неопределено Тогда
		
		ХранилищеСистемныхНастроек.Сохранить("Общее/НастройкиНачальнойСтраницы", , НастройкиНачальнойСтраницыПользователя);
		ХранилищеСистемныхНастроек.Сохранить("Общее/НастройкиНачальнойСтраницыПользователя", , Неопределено);
	
	КонецЕсли;
	
КонецПроцедуры

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Константы.ВерсияИБ.Установить(Метаданные.Версия);
	
КонецПроцедуры
