from rest_framework import viewsets
from .serializers import  TeamSerializer, PlayerSerializer, MatchesSerializer
from webApp.models import Team, Player, Matches
from rest_framework import generics
from django.db.models import Count
import random



# class TeamViewSet(viewsets.ModelViewSet):
#     queryset = Team.objects.all()
#     serializer_class = TeamSerializer

class TeamViewSet(generics.ListAPIView):
    serializer_class = TeamSerializer

    def get_queryset(self):
        return Team.objects.all().annotate(wins=Count('winner_team', distinct=True)).annotate(total_matches=Count('matches_count', distinct=True))

class PlayerList(generics.ListAPIView):
    serializer_class = PlayerSerializer

    def get_queryset(self):
        team_id = self.kwargs['team_id']
        return Player.objects.filter(team=team_id)

class Matches(generics.ListAPIView):
    serializer_class = MatchesSerializer

    def get_queryset(self, new_set=None):
        teams = random.sample(set(Team.objects.values_list('id')), 2)
        winner = random.sample(set(teams), 1)
        winner_taem = Team.objects.get(id=winner[0][0])
        new = Matches.objects.create(winner =winner_taem, points = random.randint(5, 10))
        new.team.set([teams[0][0], teams[1][0]])
        new.save()
        return Matches.objects.filter(id=new.id).values_list('team__name','winner__name','points')