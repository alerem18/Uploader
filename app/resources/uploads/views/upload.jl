page(model,
        
            
             prepend = css,
             
             
                [
                    uploader(url = "/upload", label = "Custom list", multiple = "multiple", auto__upload = true, var"@uploaded" = "handleFileUpload",
                    template(var"v-slot:list" = "scope", [
                                "",
                        item(var"v-for" = "file in scope.files", key = R"file.__key", [
                                        "",
                            itemsection([
                                                "",
                                itemlabel(class = "full-width ellipsis",
                                    "{{ file.name }}"
                                ),
                                "",
                                itemlabel(caption = "",
                                    "Status: {{ file.__status }}"
                                ),
                                "",
                                itemlabel(caption = "",
                                    @text(R"'url: ' + url")
                                ),
                                ""
                            ]),
                            "",
                            
                            itemsection(top = "", side = "", [
                                                "",
                                btn(@text(R"is_clicked ? 'copied!' : 'copy link'"),  flat = "", var"v-on:click" = "copyText", style="text-transform: lowercase;" ),
                                ""
                            ]),
                            ""
                        ]),
                        ""
                    ])
                )
                
                ] # page
        
            )# page



