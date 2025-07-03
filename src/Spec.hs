module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Test de ejemplo" $ do
    it "Buscar una película por título" $ do
      buscarPelicula "Good Fellas" peliculas `shouldBe` head peliculas

    it "Saber si un actor actuó" $ do
      peliculas `shouldSatisfy` actuo "lorraine bracco" "Good Fellas"

    it "Películas en las que actuó" $ do
      peliculasDondeActuo "ray liotta" peliculas `shouldBe` ["Good Fellas"]

    it "Quiénes actuaron" $ do
      quienesActuaron "Good Fellas" peliculas `shouldBe` ["ray liotta", "lorraine bracco"]

    it "Hizo alguna película" $ do
      peliculas `shouldSatisfy` hizoAlgunaPelicula "brad pitt"

    it "No hizo películas" $ do
      peliculas `shouldNotSatisfy` hizoAlgunaPelicula "diegoPeretti"