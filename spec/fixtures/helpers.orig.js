function(__obj) {
  if (!__obj) __obj = {};
  var __out = [], __capture = function(callback) {
    var out = __out, result;
    __out = [];
    callback.call(this);
    result = __out.join('');
    __out = out;
    return __safe(result);
  }, __sanitize = function(value) {
    if (value && value.ecoSafe) {
      return value;
    } else if (typeof value !== 'undefined' && value != null) {
      return __escape(value);
    } else {
      return '';
    }
  }, __safe, __objSafe = __obj.safe, __escape = __obj.escape;
  __safe = __obj.safe = function(value) {
    if (value && value.ecoSafe) {
      return value;
    } else {
      if (!(typeof value !== 'undefined' && value != null)) value = '';
      var result = new String(value);
      result.ecoSafe = true;
      return result;
    }
  };
  if (!__escape) {
    __escape = __obj.escape = function(value) {
      return ('' + value)
        .replace(/&/g, '&amp;')
        .replace(/</g, '&lt;')
        .replace(/>/g, '&gt;')
        .replace(/"/g, '&quot;');
    };
  }
  (function() {
    (function() {
      var item, _i, _len, _ref,
        _this = this;
    
      _ref = this.items;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        item = _ref[_i];
        __out.push('\n  ');
        __out.push(__sanitize(this.contentTag("div", {
          "class": "item"
        }, function() {
          return __capture(function() {
            __out.push('\n    ');
            __out.push(__sanitize(_this.contentTag("span", {
              "class": "price"
            }, function() {
              return __capture(function() {
                __out.push('$');
                return __out.push(__sanitize(item.price));
              });
            })));
            __out.push('\n    ');
            __out.push(__sanitize(_this.contentTag("span", {
              "class": "name"
            }, function() {
              return __capture(function() {
                return __out.push(__sanitize(item.name));
              });
            })));
            return __out.push('\n  ');
          });
        })));
        __out.push('\n');
      }
    
    }).call(this);
    
  }).call(__obj);
  __obj.safe = __objSafe, __obj.escape = __escape;
  return __out.join('');
}