{% extends "_layout.swig" %}
  {% block title %}
    {{config.title}}
    {% if config.subtitle %}
      | {{ config.subtitle }}
    {% endif %}
  {% endblock %}

  {% block main %}
    {% if page.type === 'about' %}
      <div class="about syuanpi riseIn-light">
        <h2 class="title"> {{ __('nav.about') }} </h2>
        <div class="content">
          {% if theme.self %}
            {{ theme.self }}
          {% else %}
            {{ page.content }}
          {% endif %}
        </div>
      </div>
      {% include "_partial/_post/comments.swig" %}
    {% endif %}
  {% endblock %}