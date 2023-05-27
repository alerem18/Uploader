using Genie.Router, Genie.Renderer.Html, Stipple, StippleUI
using Uploader.UploadsController
using Genie.Renderer.Json, Genie

route("/", UploadsController.index)
route("/upload", method = POST) do 
  println("file uploaded!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
  Json.json(Dict("url" => "fuck"))
end
