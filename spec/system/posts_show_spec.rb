require 'rails_helper'

RSpec.describe 'User index page', type: :feature do
  describe 'Post index page process' do
    before(:each) do
      @user = User.create(name: 'mila',
                          photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                          bio: 'I am a coder teacher',
                          posts_counter: 2)
      @user2 = User.create(name: 'marco',
                           photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                           bio: 'I am a joker teacher',
                           posts_counter: 3)
      @first_post = Post.create(author: @user, title: 'My first post', text: 'This is my first post')
      Comment.create(post: @first_post, author: @user2, text: 'This the first post comment')

      visit user_post_path(@user, @first_post)
    end

    it "should show a post's title" do
      expect(page.body).to have_content(@first_post.title)
    end

    it 'should show who wrote the post' do
      expect(page.body).to have_content(@first_post.author.name)
    end

    it 'should show how many comments it has' do
      expect(page.body).to have_content(@first_post.comments_counter.to_s)
    end

    it 'should show how many likes it has' do
      expect(page.body).to have_content(@first_post.likes_counter.to_s)
    end

    it 'should show the post body' do
      expect(page.body).to have_content(@first_post.text)
    end

    it 'should show the username of each commentor' do
      expect(page.body).to have_content(@user2.name)
    end

    it 'should show the comment body' do
      expect(page.body).to have_content('This the first post comment')
    end
  end
end
