const { environment } = require('@rails/webpacker')

const webpack = require("webpack")

environment.plugins.append("Provide", new webpacck.ProvidePlugin({
	$: 'jquerry',
	jQuerry: 'jquerry',
	Popper: [popper.js, "default"]

}))


module.exports = environment

