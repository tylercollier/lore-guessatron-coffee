###
This component serves as the root of your application.  Typically, it should be the only
component subscribed to the store.
###

React = require('react')
{ Component } = React

module.exports = lore.connect {subscribe: true}, (getState, props) ->
  {}
, class Master extends Component

    render: ->
      <div>
        {React.cloneElement(this.props.children)}
      </div>

###
If your application has authentication, this is a good place to fetch the
current user.  Assuming you've created an action that knows how to fetch
the user, and a reducer to store the user, and defined the map between them
in `config/reducerActionMap`, you would do something like this:

React = require('react')
PayloadStates = require('../constants/PayloadStates')

module.exports = lore.connect
  subscribe: true
, (getState, props) ->
  user: getState('user.current')
, React.createClass
  displayName: 'Master'

  propTypes:
    children: React.PropTypes.any
    user: React.PropTypes.object.isRequired

  render: ->
    user = this.props.user

    # show some kind of loading screen until we know who the user is
    if user.state == PayloadStates.FETCHING
      return <h1>Loading...</h1>

   <div>{this.props.children}</div>
###
