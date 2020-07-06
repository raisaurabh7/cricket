from django.contrib import admin
from .models import Team, Player, Matches
from django.utils.html import format_html


# Register your models here.

class TeamAdmin(admin.ModelAdmin):
    fields = ['name', 'logo', 'clubState']
    list_display = ['name', 'logo', 'clubState']


admin.site.register(Team, TeamAdmin)


class PlayerAdmin(admin.ModelAdmin):
    list_display = ["team", "firstName", "lastName", "image", "jerseyNumber",
                    "Country", "matches", "run", "highest", "fifties", "hundreds"]


admin.site.register(Player, PlayerAdmin)


class MatchesAdmin(admin.ModelAdmin):
    list_display = ['winner', 'points']


admin.site.register(Matches, MatchesAdmin)
