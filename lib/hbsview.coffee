class HBSView extends Spine.Module
    @include(Spine.Events)

    constructor: (template, options) ->
        compiled = options?.precompiled or false
        if not compiled
            template = Handlebars.compile(template)
            compiled = true

        @template = template

    render: ->
        return @renderWith(@model)

    renderWith: (context) ->
        return @template(context)

Spine.HBSView = HBSView