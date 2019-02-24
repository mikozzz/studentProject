--Здесь выбираем поочередно все данные по уровням классификации
--структуры населенных пунктов

--выбираем объекты 1 уровня классификации (республики, края, области)
--select * from jc_country_struct where area_id like '__0000000000' and area_id <> "";

--выбираем объекты 2 уровня классификации (внутренние области
-- республики, края, области)
--в крае (край - это первые 2 символа 02), кроме ID самого края
--select * from jc_country_struct where area_id like '02___0000000' and area_id <> '020000000000';

--выбираем объекты 3 уровня классификации (районы области края) одной из областей
--кроме ID самой области
select * from jc_country_struct where area_id like '02001___0000' and area_id <>'020010000000';

--выбираем объекты 4 уровня классификации (районы области края) одного из районов
--кроме ID самой района
select * from jc_country_struct where area_id like '02001001____' and area_id <> '020010010000';

