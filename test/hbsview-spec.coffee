describe 'HBSView', ->
    view = null

    describe 'when initialize with string template', ->

        beforeEach ->
            view = new Spine.HBSView('<h1>{{title}}</h1>')

        it 'should create instance', ->
            expect(view).not.toBeNull()

        it 'can render HTML with template arguments', ->
            html = view.render({ title : 'Title' })
            expect(html).toBe('<h1>Title</h1>')

    