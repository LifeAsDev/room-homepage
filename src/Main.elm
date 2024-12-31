module Main exposing (main)

import Browser
import Html exposing (Html, div, img, main_)
import Html.Attributes exposing (class, src, style)
import VitePluginHelper


type Msg
    = NoOp


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    { nada : Int }


init : Model
init =
    { nada = 0 }


update : Msg -> Model -> Model
update msg model =
    model


view : Model -> Html Msg
view model =
    main_ []
        [ div [ class "topBox" ] [ img [ class "hero", src <| VitePluginHelper.asset "/src/assets/images/desktop-image-hero-1.jpg" ] [], div [] [] ]
        , div [ class "bottomBox" ] []
        ]
