from django.db import models
from django.db.models.deletion import CASCADE
from empresa.models import Empleados
from core.types.origen import Origen
from core.types.clasificacion import Clasificacion
from core.types.meses import Meses

# Create your models here.

class Ausentismo(models.Model):
    mes = models.CharField(max_length=20, choices= Meses,verbose_name="Periodo", null=True, blank=True)
    nombre_completo = models.ForeignKey(Empleados, on_delete=models.CASCADE) 
    salario_dia = models.DecimalField(max_digits = 20, decimal_places = 2, verbose_name = "Salario día")
    origen_incapacidad = models.CharField(max_length=20, choices= Origen,verbose_name="Origen de la incapacidad", null=True, blank=True)
    codigo_enfermedad = models.CharField(max_length = 15, verbose_name = "Codigo de la enfermedad", null = False)
    diagnostico = models.CharField(max_length = 250, verbose_name = "Diagnostico", null = False)
    grupo_dx = models.CharField(max_length = 100, verbose_name = "Grupo DX", null = False)
    segmento_osteomuscular = models.CharField(max_length = 100, verbose_name = "Segmento Osteomuscular", null = False)
    origen = models.CharField(max_length = 50, verbose_name = "Origen de la enfermedad", null = False)
    clasificacion =models.CharField(max_length=30, choices= Clasificacion,verbose_name="Origen de la incapacidad", null=True, blank=True)
    fecha_inicio = models.DateField(verbose_name = "Fecha de de inicio", auto_now = False, auto_now_add = False)
    fecha_finalizacion = models.DateField(verbose_name = "Fecha de finalizacion", auto_now = False, auto_now_add = False)
    total_incapacidad = models.CharField(max_length = 5, verbose_name = "Total dias de incapacidad", null = False)
    valor_incapacidad = models.DecimalField(max_digits = 20, decimal_places = 2, verbose_name = "Valor incapacidad")
    valor_asumido_empresa = models.DecimalField(max_digits = 20, decimal_places = 2, verbose_name = "Valor asumido por la empresa")
    Valor_asumido_eps = models.DecimalField(max_digits = 20, decimal_places = 2, verbose_name = "Valor asumido por la eps")
    create_at = models.DateField(auto_now_add=True, verbose_name="Creado el", null=True)
    modify_at = models.DateField(auto_now=True, verbose_name="Actualizado el")

    class Meta:
        verbose_name = "Ausentismo"
    
    # Método string que devuelve el diagnostico
    def __str__(self):
        return self.diagnostico


    



   
    


    




