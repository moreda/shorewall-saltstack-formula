{% from "shorewall/map.jinja" import shorewall with context %}

shorewall:
  pkg:
    - installed
    - name: {{ shorewall.pkg }}
    {% if shorewall.version is defined %}
    - version: {{ shorewall.version }}
    {% endif %}
  service:
    - enabled
    - name: {{ shorewall.service }}
    - require:
      - pkg: shorewall
