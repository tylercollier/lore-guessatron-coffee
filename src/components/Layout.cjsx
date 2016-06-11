React = require('react')
{ Component } = React
Header = require('./Header')
ColorCreator = require('./ColorCreator')

module.exports = class Layout extends Component

  render: =>
     <div>
      <Header />
      <div className="container">
        <div className="row">
          <div className="col-md-4">
            <ColorCreator/>
          </div>
          <div className="col-md-offset-1 col-md-7">
            {React.cloneElement(@props.children || <span/>)}
          </div>
        </div>
      </div>
    </div>
