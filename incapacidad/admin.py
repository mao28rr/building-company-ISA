from django.contrib import admin
from .models import * 

# Register your models here.

class AusentismoAdmin(admin.ModelAdmin):
    readondly_fields = ('create_at, modify_at',)
    list_display = ('nombre_completo', 'origen_incapacidad', 'codigo_enfermedad', 'clasificacion',)
    ordering = ('mes', 'nombre_completo',)
    list_filter = ('nombre_completo',)
    search_field = ('nombre_completo',)
   

admin.site.register(Ausentismo, AusentismoAdmin )