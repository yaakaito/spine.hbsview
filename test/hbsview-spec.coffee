describe 'HBSView', ->
    view = null

    describe 'when initialize with string template', ->

        beforeEach ->
            view = new Spine.HBSView('<h1>{{title}}</h1>')

        it 'can create instance', ->
            expect(view).not.toBeNull()

        it 'can render HTML with template arguments', ->
            html = view.renderWith({ title : 'Title' })
            expect(html).toBe('<h1>Title</h1>')

        it 'can render HTML with model attributes', ->
            model = new ExModel({ title : 'Model Title'})
            view.model = model
            html = view.render()
            expect(html).toBe('<h1>Model Title</h1>')


class ExModel extends Spine.Model
    @configure 'ExModel', 'title'
