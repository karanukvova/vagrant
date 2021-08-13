node 'name4.local' {
   include jenkins
  jenkins::plugin { 'git': } 
}
