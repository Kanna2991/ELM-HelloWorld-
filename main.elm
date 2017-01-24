module Main exposing (..)

import Html exposing (..)


type alias Model =
    String


model : Model
model =
    "Hello World!"


type Msg
    = No0p


update : Msg -> Model -> Model
update msg model =
    case msg of
        No0p ->
            model


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text model ]
        ]


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = model
        , view = view
        , update = update
        }
