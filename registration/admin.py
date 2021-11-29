from django.contrib import admin
from .models import *

# Register your models here.
class ContactoEmergenciaAdmin(admin.ModelAdmin):
    readonly_fields = ('create_at', 'modify_at')   # no permite modificar estos campos
    list_display = ('usuario', 'contacto_emergencia', 'parentesco_emergencia', 'telefono_emergencia')
    ordering = ('usuario', 'contacto_emergencia')
    list_filter = ('usuario', 'contacto_emergencia')
    search_fields = ['usuario__username', 'contacto_emergencia']

admin.site.register(ContactoEmergencia, ContactoEmergenciaAdmin)

