-- Datos del ejercicio

type Titulo = String

type Autor = String

type Hojas = Int

type Lectura = (Titulo, Autor, Hojas)

type Biblioteca = [Lectura]

obtenerTituloDelLibro :: Lectura -> Titulo
obtenerTituloDelLibro (titulo, _, _) = titulo

obtenerNombreDelAutor :: Lectura -> Autor
obtenerNombreDelAutor (_, autor, _) = autor

obtenerPaguinasDelLibro :: Lectura -> Hojas
obtenerPaguinasDelLibro (_, _, paginas) = paginas

-- Lista de Obras

visitante :: Lectura
visitante = ("El Visitante", "Stephen King", 592)

snk1 :: Lectura
snk1 = ("Shingeki No Kyojin 1", "Hajime Isayama", 40)

snk3 :: Lectura
snk3 = ("Shingeki No Kyojin 3", "Hajime Isayama", 40)

snk127 :: Lectura
snk127 = ("Shingeki No Kyojin 127", "Hajime Isayama", 40)

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

-- Funciones a definir:
-- 1.promedioDeHojas
-- 2.lecturaObligatoria
-- 3.bibliotecaFantasiosa
-- 4.nombreDeLaBiblioteca
-- 5.bibliotecaLigera

-- 1.

-- promedioDeHojas :: Num a => Biblioteca -> a
-- promedioDeHojas biblioteca = (sumaCantidadDeHojas biblioteca) / (length biblioteca)

sumaCantidadDeHojas :: Biblioteca -> Int
sumaCantidadDeHojas biblioteca = (sum . listaDePaguinasDeCadaLibro) biblioteca

listaDePaguinasDeCadaLibro :: Biblioteca -> [Hojas]
listaDePaguinasDeCadaLibro biblioteca = map obtenerPaguinasDelLibro biblioteca

dividirCantidadDeLibros :: Biblioteca -> Int -> Int
dividirCantidadDeLibros biblioteca suma = div suma (length biblioteca)

-- 2.

esLecturaObligatoria :: Lectura -> Bool
esLecturaObligatoria ("Fundacion", _, _) = True
esLecturaObligatoria (_, "Stephen King", _) = True
esLecturaObligatoria (_, "Christopher Paolini", _) = True
esLecturaObligatoria (_, _, _) = False

-- 3.
bibliotecaFantasiosa :: Biblioteca -> Bool
bibliotecaFantasiosa biblioteca = any esLecturaFantasiosa biblioteca

esLecturaFantasiosa :: Lectura -> Bool
esLecturaFantasiosa (_, "Christopher Paolini", _) = True
esLecturaFantasiosa (_, "Neil Gaiman", _) = True
esLecturaFantasiosa (_, _, _) = False

-- 4.

nombreDeLaBiblioteca :: Biblioteca -> String
nombreDeLaBiblioteca biblioteca = filter (not . esVocal) (concatenarNombres biblioteca)

esVocal :: Char -> Bool
esVocal c = elem c "AEIOUaeiou"

concatenarNombres :: Biblioteca -> String
concatenarNombres biblioteca = concatMap obtenerTituloDelLibro biblioteca

-- 5.

bibliotecaLigera :: Biblioteca -> Bool
bibliotecaLigera biblioteca = all (<= 40) (listaDePaguinasDeCadaLibro biblioteca)