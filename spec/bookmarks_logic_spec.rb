require "./lib/bookmark_logic"


describe "Logic" do
    describe ".all" do
        it "displays available bookmarks" do
            bookmarks = Logic.all
            expect(bookmarks).to include ("Wikipedia\n")
        end
    end
end