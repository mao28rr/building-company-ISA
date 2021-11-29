from django.contrib import admin
from .models import *

# Register your models here.
class PeriodoAdmin(admin.ModelAdmin):
    list_display = ('anio',)
    ordering = ('anio',)
    search_fields = ('anio',)
    
admin.site.register(Periodo, PeriodoAdmin)


class CronogramaPresupuestoAdmin(admin.ModelAdmin):
    readonly_fields = ('create_at', 'modify_at')  # no permite modificar estos campos
    list_display = ('periodo', 'actividad', 'valor_presupuestado')
    ordering = ('periodo',)
    list_filter = ('periodo', 'actividad',)
    search_fields = ('periodo', 'actividad',)

admin.site.register(CronogramaPresupuesto, CronogramaPresupuestoAdmin)

class EjecucionPresupuestoAdmin(admin.ModelAdmin):
    readonly_fields = ('create_at', 'modify_at')  # no permite modificar estos campos
    list_display = ('fecha', 'numero_factura',)
    ordering = ('fecha',)
    list_filter = ('fecha',)
    search_fields = ('fecha',)

admin.site.register(EjecucionPresupuesto, EjecucionPresupuestoAdmin)