(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using Uploader
const UserApp = Uploader
Uploader.main()
