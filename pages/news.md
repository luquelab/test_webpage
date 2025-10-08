---
layout: default
title: "News"
nav_order: 5
has_children: false
permalink: /pages/news/
---

# Luque Lab News

{% comment %}
Renders cards from the `_news` collection (sorted newest first).
Each item was generated already by your migrate script.
{% endcomment %}

{% assign items = site.news | sort: "date" | reverse %}
{% for item in items %}
  {% include news_item.html item=item %}
{% endfor %}
