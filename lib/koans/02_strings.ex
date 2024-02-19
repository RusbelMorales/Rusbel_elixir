defmodule Strings do
  @moduledoc false
  use Koans

  @intro "Strings"

  koan "Strings are there to represent text" do
    assert "hello" == "hello"
  end

  koan "Values may be inserted into strings by interpolation" do
    assert "1 + 1 = #{1 + 1}" == "1 + 1 = 2"
  end

  koan "They can be put together" do
    assert "hello world" == "hello " <> "world"
  end

  koan "Or pulled apart into a list when needed" do
    assert ["hello", "world"] == String.split("hello world", " ")
  end

  koan "Be careful, a message may be altered" do
                      # Palabra original - palabra a reemplzar - palabra que insertaremos por la reemplazada
    assert String.replace("An awful day", "awful", "incredible") == "An incredible day"
  end

  koan "But strings never lie about themselves" do
            #Se utiliza para comprobar si una subadena está contenida dentro de otra cadena
    assert true == String.contains?("An incredible day", "day")
  end

  koan "Sometimes you want just the opposite of what is given" do
    # Invierte la palabra (.reverse())
    assert "banana" == String.reverse("ananab")
  end

  koan "Other times a little cleaning is in order" do
    # Eliminar espacios en blanco iniciales y finales de una cadnea, así como saltos de linea
    assert String.trim("  \n banana\n  ") == "banana"
  end

  koan "Repetition is the mother of learning" do
    # Devuelva la cadena original repetida el número de veces especificado dentro de una cadena
    assert String.duplicate("String", 3) == "StringStringString"
  end

  koan "Strings can be louder when necessary" do
    # Convierte la palabra en mayúsculas
    assert String.upcase("listen") == "LISTEN"
  end
end
