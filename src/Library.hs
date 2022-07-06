module Library where
import PdePreludat

type Actor = String

data Pelicula = Pelicula {
 actores :: [Actor],
 titulo :: String
} deriving (Eq, Ord, Show)

peliculas :: [Pelicula]
peliculas = [
 Pelicula ["ray liotta", "lorraine bracco"] "Good Fellas",
 Pelicula ["leo di caprio", "brad pitt"] "Once upon a time in Hollywood"
 ]

-- Buscar una película en base a su nombre
buscarPelicula :: String -> [Pelicula] -> Pelicula
buscarPelicula tituloPelicula = head . filter ((== tituloPelicula) . titulo)

-- Req. 1: Saber si un actor actuó en una película (dada una serie de películas)
actuo :: Actor -> String -> [Pelicula] -> Bool
actuo actor tituloPelicula peliculas = implementame

-- Req. 2: Título de las películas donde actuó un actor
peliculasDondeActuo :: Actor -> [Pelicula] -> [String]
peliculasDondeActuo actor peliculas = implementame

-- Req. 3: Saber quiénes actuaron en el título de una película (dada una lista de películas y actores)
quienesActuaron :: String -> [Pelicula] -> [Actor]
quienesActuaron tituloPelicula = implementame

-- Req. 4: Saber si un actor hizo alguna película (dada una serie de películas)
hizoAlgunaPelicula :: Actor -> [Pelicula] -> Bool
hizoAlgunaPelicula actor = implementame

