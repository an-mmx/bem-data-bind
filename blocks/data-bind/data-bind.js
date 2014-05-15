/**
 * Provides databindings throught js params
 *
 * @param {Object} dataBindings Data bindings structure. See i-bem__data-bind.bindToData
 * @param {String|Object} block Block decl to bind
 */
BEM.DOM.decl('data-bind', {

    onSetMod: {
        'js': function () {
            this.bindToData(this.params.dataBindings, this.findBlockOn(this.params.block));
        }
    }

});

