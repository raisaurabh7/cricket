from django.contrib.auth.models import User, Group
from rest_framework import serializers
from webApp.models import Team, Player, Matches





class TeamSerializer(serializers.HyperlinkedModelSerializer):
    wins = serializers.IntegerField()
    total_matches = serializers.IntegerField()
    class Meta:
        model = Team
        fields = ['name', 'logo', 'clubState','wins','total_matches']


class PlayerSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Player
        fields = ["team", "firstName", "lastName", "image", "jerseyNumber",
                  "Country", "matches", "run", "highest", "fifties", "hundreds"]

class MatchesSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Matches
        fields = ['team', 'winner', 'points']