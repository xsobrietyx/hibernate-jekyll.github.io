---
layout: post
title: "Blog contents:"
date: Sat Feb 15 18:47:22 EST 2025
---
  {% for post in site.posts %}

  {% assign target_slug = post.file_name %}
{% assign matching_post = site.posts | where: "slug", target_slug | first %}

{% if matching_post %}

- [{{ post.title }}]({{ matching_post.url }})
{% else %}
  No matching post for slug: {{ target_slug }}
{% endif %}
  {% endfor %}
