# Generated by Django 3.0.8 on 2020-07-05 21:07

from django.db import migrations, models
import webApp.models


class Migration(migrations.Migration):

    dependencies = [
        ('webApp', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='player',
            name='image',
            field=models.ImageField(help_text='Maximum file size allowed is 2Mb', max_length=30, upload_to=webApp.models.path_and_rename_player, validators=[webApp.models.validate_player_image]),
        ),
    ]