fs = require('fs')
module.exports = {
  load: function load (htmlPath)  {
    var frag;
    var data = fs.readFileSync(htmlPath, 'utf8');
    var range = document.createRange();
    return range.createContextualFragment(data);
  }
}
