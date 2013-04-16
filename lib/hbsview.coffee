class HBSView extends Spine.Module

    constructor: (template, options) ->
        compiled = options?.precompiled or false
        if not compiled
            template = Handlebars.compile(template)
            compiled = true
        else
            template = Handlebars.templates[template]

        @template = template

    render: ->
        return @renderWith(@model)

    renderWith: (context) ->
        return @template(context)


Spine.HBSView = HBSView