-- Datos del ejercicio

type Titulo = String
type Autor = String
type Hojas = Int
type Lectura = (Titulo, Autor, Hojas)
type Biblioteca = [Lectura]

titulo :: Lectura -> Titulo
titulo (tit, _, _) = tit

autor :: Lectura -> Autor
autor (_, aut, _) = aut

hojas :: Lectura -> Hojas
hojas (_, _, paginas) = paginas

--Lista de Obras

visitante :: Lectura
visitante = ("El Visitante","Stephen King", 592)

snk1 :: Lectura
snk1 = ("Shingeki No Kyojin 1","Hajime Isayama", 40)

snk3 :: Lectura
snk3 = ("Shingeki No Kyojin 3","Hajime Isayama", 40)

snk127 :: Lectura
snk127 = ("Shingeki No Kyojin 127","Hajime Isayama", 40)

fundacion :: Lectura
fundacion = ("Fundacion", "Isaac Asimov", 230)

sandman5 :: Lectura
sandman5 = ("Sandman 5", "Neil Gaiman", 35)

sandman10 :: Lectura
sandman10 = ("Sandman 10", "Neil Gaiman", 35)

sandman12 :: Lectura
sandman12 = ("Sandman 12", "Neil Gaiman", 35)

eragon :: Lectura
eragon = ("Eragon", "Christopher Paolini", 544)

eldest :: Lectura
eldest = ("Eldest", "Christopher Paolini", 704)

brisignr :: Lectura
brisignr = ("Brisignr", "Christopher Paolini", 700)

legado :: Lectura
legado = ("Legado", "Christopher Paolini", 811)


--Funciones a definir:
-- 1.promedioDeHojas
-- 2.lecturaObligatoria
-- 3.bibliotecaFantasiosa
-- 4.nombreDeLaBiblioteca
-- 5.bibliotecaLigera

--1.

--promedioDeHojas :: Num a => Biblioteca -> a
--promedioDeHojas biblioteca = (sumaCantidadDeHojas biblioteca) / (length biblioteca)

sumaCantidadDeHojas :: Biblioteca -> Int
sumaCantidadDeHojas biblioteca = (sum . listaDeHojas) biblioteca

listaDeHojas :: Biblioteca -> [Hojas]
listaDeHojas biblioteca = map hojas biblioteca

dividirCantidadDeLibros :: Biblioteca -> Int -> Int
dividirCantidadDeLibros biblioteca suma = div suma (length biblioteca)

--2. 

lecturaObligatoria :: Lectura -> Bool
lecturaObligatoria ("Fundacion", _, _) = True
lecturaObligatoria (_, "Stephen King", _) = True
lecturaObligatoria (_, "Christopher Paolini", _) = True
lecturaObligatoria (_, _, _) = False

--3. 
bibliotecaFantasiosa :: Biblioteca -> Bool
bibliotecaFantasiosa biblioteca = any lecturaFantasiosa biblioteca

lecturaFantasiosa :: Lectura -> Bool
lecturaFantasiosa (_, "Christopher Paolini", _) = True
lecturaFantasiosa (_, "Neil Gaiman", _) = True
lecturaFantasiosa (_, _, _) = False

--4.

nombreDeLaBiblioteca :: Biblioteca -> String
nombreDeLaBiblioteca biblioteca = filter (not . esVocal) (concatenarNombres biblioteca)

esVocal :: Char -> Bool
esVocal c = elem c "AEIOUaeiou"

concatenarNombres :: Biblioteca -> String
concatenarNombres biblioteca = concatMap titulo biblioteca

--5.

bibliotecaLigera :: Biblioteca -> Bool
bibliotecaLigera biblioteca = all (<= 40) (listaDeHojas biblioteca)