React = require('react')
{ Component } = React
Router = require('react-router')

module.exports = class Color extends Component
  @propTypes:
    color: React.PropTypes.object.isRequired

  render: =>
    color = @props.color

    <Router.Link
      to={'/colors/' + color.id}
      className="list-group-item"
      activeClassName="active">
      {color.data.name}
    </Router.Link>
