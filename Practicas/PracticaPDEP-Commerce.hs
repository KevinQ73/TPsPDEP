-- Orden
--1.Precio Total
--2.Aplicar Descuento
--3.Aplicar Costo Envio
--4.Prod Elite
--5.Prod Lujo
--6.Prod Codiciado
--7.Prod Corriente
--8.Descodiciar Producto (Mejorable)
--9.Producto XL
--10.Version Barata
--11.Entrega Sencilla

precioTotal :: Float -> Float -> Float -> Float -> Float
precioTotal precioUnitario cantidad descuento costo = aplicarCostoDeEnvio (aplicarDescuento precioUnitario descuento * cantidad) costo

esProductoDeElite :: String -> Bool
esProductoDeElite nombreProducto = esProductoDeLujo nombreProducto && esProductoCodiciado nombreProducto && not (esProductoCorriente nombreProducto)

aplicarDescuento :: Float -> Float -> Float
aplicarDescuento precio descuento = precio * descuento

entregaSencilla :: String -> Bool
entregaSencilla fecha = (even . length) fecha

descodiciarProducto :: String -> String
descodiciarProducto nombreCodiciado = take (length nombreCodiciado - 2) nombreCodiciado

esProductoDeLujo :: String -> Bool
esProductoDeLujo unProducto = elem 'x' unProducto || elem 'z' unProducto

aplicarCostoDeEnvio :: Float -> Float -> Float
aplicarCostoDeEnvio precio descuento = precio + descuento

esProductoCorriente :: String -> Bool
esProductoCorriente unProducto = 
    elem 'a' (take 1 unProducto) || elem 'e' (take 1 unProducto) || elem 'i' (take 1 unProducto) || elem 'o' (take 1 unProducto) || elem 'u' (take 1 unProducto)

esProductoCodiciado :: String -> Bool
esProductoCodiciado unProducto = length unProducto > 10

productoXL :: String -> String
productoXL nombreProducto = nombreProducto ++ "XL"

versionBarata :: String -> String
versionBarata nombreProducto = (reverse . descodiciarProducto) nombreProducto