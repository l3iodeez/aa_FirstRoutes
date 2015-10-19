require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users'
).to_s

#puts RestClient.get(url)


def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  puts RestClient.post(
  url,
  { user: { name: "Gizmo" } }
  )
end


def get_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/3'
  ).to_s

  puts RestClient.get(url)
end

def update_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/3'
  ).to_s

  puts RestClient.patch(url, user: { email:"user2@email.com", name:"user2john" })
end

def destroy_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/2'
  ).to_s

  puts RestClient.delete(url)
end

def create_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/3/contacts'
  ).to_s

  puts RestClient.post(url, contact: { name:"user2@email.com", email:"user2john"})
end

def create_comment
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/3/comments'
  ).to_s

  puts RestClient.post(url, comment: { text: "This is a comment", commentable_id: 3, commentable_type: "User"})
end

begin
  create_comment
rescue RestClient::Exception => e
  puts e.message
end
