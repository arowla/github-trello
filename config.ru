#!/usr/bin/env ruby
$LOAD_PATH.unshift ::File.expand_path(::File.dirname(__FILE__) + "/lib")
require "github-trello/server"

server = GithubTrello::Server.new
server.config = YAML::load(File.read(path))
run server
