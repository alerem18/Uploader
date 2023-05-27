module UploadsController
  # Build something great
  using Uploader.Uploads, Genie.Renderer.Html
  using Stipple, StippleUI, GenieAuthentication
  using Uploader.Styles

  model = Uploads.model_builder()
  Stipple.js_methods(model::Uploads.MyModel) = """
    handleFileUpload(request) {
      const response = JSON.parse(request.xhr.responseText);
      this.url = response.url

    },

    copyText() {
      this.is_clicked = true;
      const tempInput = document.createElement("input");
      
      tempInput.value = this.url;
      document.body.appendChild(tempInput);

      // Select the text in the input element
      tempInput.select();
      tempInput.setSelectionRange(0, 99999); // For mobile devices

      // Copy the selected text to the clipboard
      document.execCommand("copy");

      // Remove the temporary input element
      document.body.removeChild(tempInput);

      setTimeout(() => {
        this.is_clicked = false;
      }, 2000)
    }
  """

  function index()
    html(:uploads, "upload.jl", model = model, css = Styles.css(); context = @__MODULE__)
  end


end
