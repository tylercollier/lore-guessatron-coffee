# lore-tutorial

A [Lore](http://www.lorejs.org) application.

## Modified to use coffeescript

* First I followed the tutorial to create the Guessatron 5000 app.
* Then I added coffee-script, coffee-loader, and cjsx-loader, and configured them to be used in the webpack config.
* I created a branch called `more-idiomatic-coffee` which shows the use of coffee classes, extending the `React.Component` class, which allows us to not have to write the class's `displayName` property. When using `React.createClass`, React automatically sets `this` to the React class. When using coffee (or ES6) classes, this doesn't happen, so we need to use fat arrows to bind `this` to the proper context.

The `more-idiomatic-coffee` is a separate branch because I wasn't sure which one is preferred to be similar to the original Guessatron tutorial. Using coffee classes is preferred by me, because I feel it's more idiomatic coffee-script, but I'm just one voice and I certainly couldn't tell you if it's more common to use coffee classes or "React classes" in the wild.

## To run

First start the backend API server:

```
cd lore-tutorial-server
npm start
```

Then boot up the website:

> First return to this project's root directory, with e.g. `cd ..`.

```
npm install
npm start
```
