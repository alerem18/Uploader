module Uploads

import SearchLight: AbstractModel, DbId
import Base: @kwdef
using Stipple, StippleUI

export Upload

@vars MyModel begin
  url::R{String} = ""
  button_text::R{String} = "copy"
  is_clicked::R{Bool} = false
end


model_builder() = MyModel |> init
@kwdef mutable struct Upload <: AbstractModel
  id::DbId = DbId()
end

end
