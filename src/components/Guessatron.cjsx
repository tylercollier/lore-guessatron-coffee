React = require('react')
randomColor = require('randomcolor')

# Returns a random integer between min and max
getRandomInt = (min, max) ->
  Math.floor(Math.random() * (max - min + 1)) + min

# Return a random bragging phase so the Guessatron can let
# you know how awesome it is.
getBragPhrase = ->
  bragPhrases = [
    "Nailed it!"
    "I'm on fire."
    "YOU'RE WELCOME."
    "I interpret your silence as awe."
    "Impressive, right?"
  ]
  bragPhrases[getRandomInt(0, bragPhrases.length - 1)]

module.exports = lore.connect (getState, props) ->
  color: getState('color.byId', id: props.params.colorId)
, React.createClass
  displayName: 'Guessatron'

  propTypes:
    color: React.PropTypes.object.isRequired

  getStyles: ->
    media:
      height: '64px'
      width: '64px'
      backgroundColor: randomColor()

  render: ->
    color = @props.color
    styles = @getStyles()
    bragPhrase = getBragPhrase()

    <div>
      <h2>Guessatron Result</h2>
      <div className="media">
        <div className="media-left">
          <a href="#">
            <div className="media-object" style={styles.media} />
          </a>
        </div>
        <div className="media-body">
          <h4 className="media-heading">{color.data.name}</h4>
          <em>Is this your color?</em>
          <div>{bragPhrase}</div>
        </div>
      </div>
    </div>
