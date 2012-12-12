# Examples

## Install 

1. install node.js + npm 
2. git clone this repo and chdir to examples dir.
3. run `npm install`
3. Launch one of both servers `coffee nano_api.coffee` or `coffee nano_html.coffee`

## Test URI
open your web browser and go test those URLs:

  * User Object : [http://localhost:3000/evangenieur/](http://localhost:3000/evangenieur/)
  * User Channel Object : [http://localhost:3000/evangenieur/my_channel/](http://localhost:3000/evangenieur/my_channel)
  * Push message to User Channel [http://localhost:3000/evangenieur/my_channel/?message=new+message](http://localhost:3000/evangenieur/my_channel/?message=new+message)
  * Push Another message ... [http://localhost:3000/evangenieur/my_channel/?message=new+message2](http://localhost:3000/evangenieur/my_channel/?message=new+message2)

## Deployment

* Get an account on [nodejitsu](http://jit.su)
* Modify `subdomain` properties in `package.json`
* Deploy to nodejitsu cloud `jitsu deploy`
* It's online on http://your_subdomain.jit.su/
