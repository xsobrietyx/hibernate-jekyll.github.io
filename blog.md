---
layout: post
title: Init
permalink: /blog
date: Sat Feb 15 18:47:22 EST 2025
---

  {% for post in site.posts %}
      {{ post.url }}">{{ post.title }}
  {% endfor %}
