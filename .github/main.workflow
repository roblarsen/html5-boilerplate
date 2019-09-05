workflow "Publish" {
  on = "push"
  resolves = ["Publish"]
}
action "Tag" {
  needs = "Test"
  uses = "actions/bin/filter@master"
  args = "tag"
}
action "Publish" {
  needs = "Tag"
  uses = "actions/npm@master"
  args = "publish --access public"
  secrets = ["NPM_AUTH_TOKEN"]
}
