---
layout: farsi
permalink: /vir/
---

{% assign persianposts = site.posts | where: 'lan', 'fa' | sort: 'date' | reverse  %}

<div
  style="display: inline-block; line-height: 2; font-size: 1.1em; max-width: 750px; font-weight: 400; word-wrap:break-word;">
{% for post in persianposts %}

  <h3> <a href="{{ post.url }}"> {{ post.title }} </a> </h3>

  <p>{{ post.date | jdate: "%d %b %Y" | replace: "0", "۰" | replace: "1", "۱" | replace: "2", "۲" | replace: "3", "۳" | replace: "4", "۴" | replace: "5", "۵" | replace: "6", "۶" | replace: "7", "۷" | replace: "8", "۸" | replace: "9", "۹" }}</p>

  <p> {{ post.content | strip_html | truncatewords: 200 }} </p>

  <p><a href="{{ post.url }}"> بخوانید </a> </p>

{% endfor %}

</div>
