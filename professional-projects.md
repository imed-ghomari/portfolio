---
layout: page
title: Professional Projects
hide_title: true
---

<div class="posts">
  {% assign professional_posts = site.posts | where_exp: "post", "post.categories contains 'professional'" %}
  {% for post in professional_posts %}
  <article class="post">
    <h2 class="post-title">
      <a href="{{ post.url | relative_url }}">
        {{ post.title }}
      </a>
    </h2>

    <time datetime="{{ post.date | date_to_xmlschema }}" class="post-date">{{ post.date | date_to_string }}</time>

    {{ post.excerpt }}
  </article>
  {% endfor %}
</div>
