class HBSView extends Module
    @include(Events)

    construcor: (template, options) ->
        compiled = options.precompiled or false
        if not compiled
            template = Handlebars.compile(template)
            compiled = true

    