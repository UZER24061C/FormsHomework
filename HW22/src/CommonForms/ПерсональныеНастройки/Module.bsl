
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	ОсновнойСклад = ХранилищеОбщихНастроек.Загрузить("ОсновнойСклад");
	
КонецПроцедуры

&НаКлиенте
Процедура ЗаписатьИЗакрыть(Команда)
	ЗаписатьНаСервере();
	Модифицированность = Ложь;
	Закрыть();
КонецПроцедуры

&НаСервере
Процедура ЗаписатьНаСервере()
	
	ХранилищеОбщихНастроек.Сохранить("ОсновнойСклад", , ОсновнойСклад);
	
КонецПроцедуры

&НаКлиенте
Процедура ПередЗакрытием(Отказ, СтандартнаяОбработка)

	Если Модифицированность Тогда
	
		Результат = Вопрос("Данные были изменены. Сохранить изменения?", РежимДиалогаВопрос.ДаНетОтмена);
		
		Если Результат = КодВозвратаДиалога.Отмена Тогда
			
			Отказ = Истина;
			
		ИначеЕсли Результат = КодВозвратаДиалога.Да Тогда
			
			ЗаписатьНаСервере();			
		
		КонецЕсли;
	
	КонецЕсли;
	
КонецПроцедуры










