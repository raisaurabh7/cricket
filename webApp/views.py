from django.shortcuts import render
from django.shortcuts import get_object_or_404
from django.views.generic import ListView
from webApp.models import Team, Player, Matches
from django.db.models import Count
import random



# Create your views here.


class GetTeams(ListView):
    context_object_name = 'team_list'
    template_name = "index.html"

    def get_queryset(self):
        return Team.objects.all().annotate(wins=Count('winner_team', distinct=True)).annotate(total_matches=Count('matches_count', distinct=True))


class GetPlayers(ListView):
    context_object_name = 'player_list'
    template_name = "player.html"

    def get_queryset(self):
        return Player.objects.filter(team=self.kwargs['team_id'])


class GetMatch(ListView):
    context_object_name = 'match'
    template_name = "match.html"

    def get_queryset(self, new_set=None):
        teams = random.sample(set(Team.objects.values_list('id')), 2)
        winner = random.sample(set(teams), 1)
        winner_taem = Team.objects.get(id=winner[0][0])
        new = Matches.objects.create(winner =winner_taem, points = random.randint(5, 10))
        new.team.set([teams[0][0], teams[1][0]])
        new.save()
        return Matches.objects.filter(id=new.id).values_list('team__name','winner__name','points')
