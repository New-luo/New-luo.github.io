var posts=["2025/07/30/hello-world/","2025/07/30/vue/"];function toRandomPost(){
    pjax.loadUrl('/'+posts[Math.floor(Math.random() * posts.length)]);
  };