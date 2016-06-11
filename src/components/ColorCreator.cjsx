React = require('react')
Color = require('./Color')

ENTER_KEY = 13

module.exports = lore.connect (getState, props) ->
  colors: getState('color.find')
, React.createClass
  displayName: 'ColorCreator'
  propTypes: colors: React.PropTypes.object.isRequired
  getInitialState: ->
    newColor: ''
  onChangeNewColor: (event) ->
    @setState newColor: event.target.value
  onKeyDownNewColor: (event) ->
    return if event.charCode != ENTER_KEY
    @onCreateColor()
  onCreateColor: ->
    value = @state.newColor.trim()
    if value
      lore.actions.color.create name: value
      @setState newColor: ''
  renderColor: (color) ->
    <Color key={color.id || color.cid} color={color}/>
  render: ->
    colors = @props.colors
    <div>
      <h2>Color Requests</h2>
      <div className="input-group">
        <input
          type="text"
          className="form-control"
          placeholder="What color should Guessatron display?"
          value={this.state.newColor}
          onKeyPress={this.onKeyDownNewColor}
          onChange={this.onChangeNewColor} />
        <span className="input-group-btn">
          <button className="btn btn-default" type="button" onClick={this.onCreateColor}>
            Create
          </button>
        </span>
      </div>
      <div className="list-group" style={{paddingTop: '16px'}}>
        {colors.data.map(this.renderColor)}
      </div>
    </div>
