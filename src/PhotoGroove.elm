module PhotoGroove exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)

urlPrefix = "http://elm-in-action.com/"	

view model =
    div [ class "content"]
        [ h1 [] [ text "Photo Groove" ]
        , div [ id "thumbnails" ] []
        ]

viewThumbnail thumb =
    img [ src (urlPrefix ++ thumb.url) ] []
    
initialModel =
    [{ url = "1.jpeg" }, { url = "2.jpeg" }, { url = "3.jpeg" }]

main =
    view initialModel