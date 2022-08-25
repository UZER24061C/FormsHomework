
Процедура ПередЗаписью(Отказ)
	//Сообщить("ПередЗаписью в модуле объекта");
	ФорматироватьНаименование();	
КонецПроцедуры

Процедура ФорматироватьНаименование() Экспорт
	Наименование = СокрЛП(Наименование);
КонецПроцедуры

Процедура СоздатьДоговор()

	НовыйДоговор = Справочники.Договоры.СоздатьЭлемент();
	НовыйДоговор.Владелец = Ссылка;
	НовыйДоговор.Наименование = "Основной договор";
	НовыйДоговор.Записать();	

КонецПроцедуры


Процедура ПриЗаписи(Отказ)
	Если ДополнительныеСвойства.СоздатьНовыйОсновнойДоговор = Истина Тогда //В структуре истина
			СоздатьДоговор();
	КонецЕсли;
КонецПроцедуры