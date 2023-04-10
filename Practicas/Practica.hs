-- Funcional. Práctica n°1

-- Notas previas
-- En algunos ejercicios se van a utilizar algunas de las funciones que están en el Prelude por ej: 
-- mod 20 3 = 2	el resto de la división entre 20 y 3 es 2. 
-- div 14 3 = 4	parte entera de la división entre 14 y 3 es 4. 
-- max 8 10 = 10	devuelve el max entre 2 números. 
-- min 9 15 = 9	devuelve el min entre 2 números.

-- Ejercicio 1)

esMultiploDeTres :: Int -> Bool
esMultiploDeTres numero = mod numero 3 == 0

-- Ejercicio 2)

esMultiploDe :: Int -> Int -> Bool
esMultiploDe multiplo divisor = mod multiplo divisor == 0

-- Ejercicio 3)

cubo :: Int -> Int
cubo numero = numero ^ (3 :: Integer)

-- Ejercicio 4)

area :: Double -> Double -> Double
area base altura = base * altura

-- Ejercicio 5)

esBisiesto :: Int -> Bool
esBisiesto año = esMultiploDe año 4

-- Ejercicio 6)

celsiusToFahr :: Double -> Double
celsiusToFahr celsius = 32 + celsius / 5 * 9

-- Ejercicio 7)

fahrToCelsius :: Double -> Double
fahrToCelsius fahrenheit = (fahrenheit - 32) * 5 / 9

-- Ejercicio 8)

taHelaoF :: Double -> Bool
taHelaoF temp = fahrToCelsius temp < 8

-- Ejercicio 9)