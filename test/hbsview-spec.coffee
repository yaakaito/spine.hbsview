describe 'HBSView', ->
    view = null

    beforeEach ->
        view = new Spine.HBSView()

    it "hoge", ->
        expect(view).not.toBeNull()