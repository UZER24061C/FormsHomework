
&НаКлиенте
Процедура ДобавитьПроект(Команда)
	ПараметрыФормы = Новый Структура;
	ПараметрыФормы.Вставить("Руководитель", Объект.Ссылка);
	ОткрытьФорму("Справочник.Проекты.Форма.ФормаЭлемента", ПараметрыФормы);
	ДобавитьПроектНаСервере();
КонецПроцедуры

&НаСервере
Процедура ДобавитьПроектНаСервере()
	//TODO: Вставить содержимое обработчика
КонецПроцедуры
