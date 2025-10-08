---
layout: default
title: "News"
nav_order: 5
has_children: false
permalink: /pages/news/
---

# Luque Lab News

{%- assign items = site.news | sort: 'date' | reverse -%}

<!-- Invisible anchors matching the link targets -->
{%- for item in items -%}
<a id="{{ item.title | slugify }}-{{ item.date | date: '%Y-%m-%d' }}"></a>
{%- endfor -%}

{%- for item in items -%}
| [**{{ item.title }}**](#{{ item.title | slugify }}-{{ item.date | date: '%Y-%m-%d' }}) | {{ item.date | date: "%B %-d, %Y" }} |
| {{ item.summary | markdownify | strip_newlines }} {% if item.links and item.links.primary %}[link]({{ item.links.primary }}){% endif %} {% if item.team_links and item.team_links.size > 0 %}{% for t in item.team_links %}[{{ t.text }}]({{ t.href | relative_url }}){% if forloop.last == false %}, {% endif %}{% endfor %}{% endif %} {% if item.links and item.links.note %}<br><sub>{{ item.links.note }}</sub>{% endif %} | {%- if item.image -%}<img src="{{ item.image | relative_url }}" width="{{ item.image_width | default: 180 }}">{%- endif -%} |
{%- endfor -%}
