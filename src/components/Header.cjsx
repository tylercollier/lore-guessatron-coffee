React = require('react')
Router = require('react-router')

module.exports = React.createClass
  displayName: 'Header'

  render: ->
    <nav className="navbar navbar-default navbar-static-top">
      <div className="container">
        <div className="navbar-header">
          <Router.Link to={'/'} className="navbar-brand">
            Guessatron 5000
          </Router.Link>
        </div>
      </div>
    </nav>
