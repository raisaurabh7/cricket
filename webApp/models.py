from django.db import models
from django.core.exceptions import ValidationError
import os
from uuid import uuid4
from django.utils.safestring import mark_safe


def validate_logo_image(fieldfile_obj):
    filesize = fieldfile_obj.file.size
    megabyte_limit = 1.0
    if filesize > megabyte_limit * 1024 * 1024:
        raise ValidationError("Max file size is %sMB" % str(megabyte_limit))


def validate_player_image(fieldfile_obj):
    filesize = fieldfile_obj.file.size
    megabyte_limit = 2.0

    if filesize > megabyte_limit * 1024 * 1024:
        raise ValidationError("Max file size is %sMB" % str(megabyte_limit))


def path_and_rename_logo(instance, filename):
    upload_to = 'logos/'
    ext = filename.split('.')[-1]
    filename = '{}.{}'.format(uuid4().hex, ext)
    return os.path.join(upload_to, filename)


def path_and_rename_player(instance, filename):
    upload_to = 'player/'
    ext = filename.split('.')[-1]
    filename = '{}.{}'.format(uuid4().hex, ext)
    return os.path.join(upload_to, filename)


class Team(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=30)
    logo = models.ImageField(upload_to=path_and_rename_logo,
                             validators=[validate_logo_image], max_length=30,
                             help_text='Maximum file size allowed is 1Mb')
    clubState = models.CharField(max_length=30)


class Player(models.Model):
    firstName = models.CharField(max_length=30)
    lastName = models.CharField(max_length=30)
    image = models.ImageField(upload_to= path_and_rename_player, max_length=30,
                              validators=[validate_player_image], help_text='Maximum file size allowed is 2Mb')
    jerseyNumber = models.IntegerField()
    Country = models.CharField(max_length=30)
    matches = models.IntegerField()
    run = models.IntegerField()
    highest = models.IntegerField()
    fifties = models.IntegerField()
    hundreds = models.IntegerField()
    team = models.ForeignKey(Team, on_delete=models.CASCADE, related_name='player_team')


class Matches(models.Model):

    team = models.ManyToManyField(Team, related_name='matches_count')
    winner = models.ForeignKey(Team, on_delete=models.CASCADE, related_name='winner_team')
    points = models.IntegerField(default=0)

