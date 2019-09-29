---
layout: farsi
permalink: /vir/بایگانی/
---

# همه‌ی نوشته‌ها

{% assign persianposts = site.posts | where: 'lan', 'fa' | sort: 'date' | reverse  %}

<div
  style="display: inline-block; line-height: 2; font-size: 1.1em; max-width: 750px; font-weight: 400; word-wrap:break-word;">
{% for post in persianposts  limit:10 %}

  <h5> <a href="{{ post.url }}"> {{ post.title }} </a> </h5>

  <p style="font-size: 0.8em">{{ post.date | jdate: "%d %b %Y" | replace: "0", "۰" | replace: "1", "۱" | replace: "2", "۲" | replace: "3", "۳" | replace: "4", "۴" | replace: "5", "۵" | replace: "6", "۶" | replace: "7", "۷" | replace: "8", "۸" | replace: "9", "۹" }}</p>

{% endfor %}

</div>