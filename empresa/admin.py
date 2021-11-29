from django.contrib import admin
from .models import *

# Register your models here.
class TipoEmpresaAdmin(admin.ModelAdmin):
    readonly_fields = ('create_at', 'modify_at')  # no permite modificar estos campos
    list_display = ('nombre_tipo',)
    ordering = ('nombre_tipo',)
    search_fields = ('nombre_tipo',)
    
admin.site.register(TipoEmpresa, TipoEmpresaAdmin)


class AreasAdmin(admin.ModelAdmin):
    readonly_fields = ('create_at', 'modify_at')  # no permite modificar estos campos
    list_display = ('empresa', 'nombre_area')
    ordering = ('empresa',)
    list_filter = ('empresa',)
    search_fields = ('empresa',)

admin.site.register(Areas, AreasAdmin)


class EmpleadosAdmin(admin.ModelAdmin):
    readonly_fields = ('create_at', 'modify_at')  # no permite modificar estos campos
    list_display = ('usuario', 'cargo', 'id_empleado', 'eps', 'arl')
    ordering = ('usuario__username', 'fecha_ingreso', 'area')
    list_filter = ('usuario__username','fecha_ingreso', 'eps')
    search_fields = ['usuario__username','cargo']
    
admin.site.register(Empleados, EmpleadosAdmin)


class EmpresaAdmin(admin.ModelAdmin):
    readonly_fields = ('create_at', 'modify_at')   # no permite modificar estos campos
    list_display = ('nombre', 'nit', 'actividad_economica', 'naturaleza_juridica')
    ordering = ('tipo_empresa', 'nombre')
    list_filter = ('nombre',)
    search_fields = ('nombre',)
    
admin.site.register(Empresa, EmpresaAdmin)


class CargosAdmin(admin.ModelAdmin):
    readonly_fields = ('create_at', 'modify_at')   # no permite modificar estos campos
    list_display = ('cargo', 'salario_cargo')
    ordering = ('cargo', 'salario_cargo')
    list_filter = ('cargo',)
    search_fields = ('cargo',)

admin.site.register(Cargos, CargosAdmin)


class NivelAcademicoAdmin(admin.ModelAdmin):
    readonly_fields = ('create_at', 'modify_at')   # no permite modificar estos campos
    list_display = ('nivel_academico',)
    ordering = ('nivel_academico',)
    list_filter = ('nivel_academico',)
    search_fields = ('nivel_academico',)

admin.site.register(NivelAcademico, NivelAcademicoAdmin)


class CapacitacionesAdmin(admin.ModelAdmin):
    readonly_fields = ('create_at', 'modify_at')   # no permite modificar estos campos
    list_display = ('empleado', 'nombre_capacitacion')
    ordering = ('nombre_capacitacion',)
    list_filter = ('empleado', 'nombre_capacitacion')
    search_fields = ('nombre_capacitacion',)
    
admin.site.register(Capacitaciones, CapacitacionesAdmin)


class SanidadAdmin(admin.ModelAdmin):
    readonly_fields = ('create_at', 'modify_at')   # no permite modificar estos campos
    list_display = ('enfermedad',)
    list_filter = ('enfermedad',)
    search_fields = ('enfermedad',)
    
admin.site.register(Sanidad, SanidadAdmin)


class DetalleSanidadAdmin(admin.ModelAdmin):
    readonly_fields = ('create_at', 'modify_at')   # no permite modificar estos campos
    list_display = ('empleado', 'enfermedad', 'vacuna')
    ordering = ('vacuna', 'enfermedad')
    list_filter = ('enfermedad', 'vacuna')
    search_fields = ('vacuna', 'enfermedad')
    
admin.site.register(DetalleSanidad, DetalleSanidadAdmin)

