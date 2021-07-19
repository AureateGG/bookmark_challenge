feature "we can view booksmarks" do
    scenario "can access /bookmarks" do
        visit("/")
        click_button("view bookmarks")
        expect(page).to have_content "Wikipedia"
    end
end