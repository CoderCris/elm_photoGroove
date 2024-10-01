module PhotoGroove exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)

urlPrefix = "http://elm-in-action.com/"

view model =
    div [ class "content"]
        [ h1 [] [ text "Photo Groove" ]
        , div [ id "thumbnails" ] []
        ]

viewThumbnail selectedUrl thumb =
    if selectedUrl == thumb.url then
        img [ src (urlPrefix ++ thumb.url), class "selected" ] []
    else
        img [ src (urlPrefix ++ thumb.url) ] []
    
initialModel =
     {photos =
        [{ url = "1.jpeg" }
        , { url = "2.jpeg" }
        , { url = "3.jpeg" }
        ]
    , selectedUrl = "1.jpeg"
    }
main =
    view initialModel