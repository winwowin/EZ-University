# Generated by Django 2.1.1 on 2018-10-23 19:22

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('courseinfo', '0002_auto_20180921_2015'),
    ]

    operations = [
        migrations.AlterUniqueTogether(
            name='section',
            unique_together={('semester', 'course', 'section_name')},
        ),
        migrations.AlterUniqueTogether(
            name='student',
            unique_together={('last_name', 'first_name', 'nickname')},
        ),
    ]