from django.db import models
from empresa.models import Empleados, Cargos
from django.db.models.deletion import CASCADE

# Create your models here.

# Modelo Comite
class Comites(models.Model):
    # atributo de la clase Comites
    nombre_comite = models.CharField(verbose_name="Nombre de Comite", max_length=60)
    create_at = models.DateField(auto_now_add=True, verbose_name="Creado el", null=True)
    modify_at = models.DateField(auto_now=True, verbose_name="Actualizado el")

    class Meta:
        verbose_name = "Comite"
        verbose_name_plural = "Comites"
    
    # Método string que devuelve el nombre del comite
    def __str__(self):
        return self.nombre_comite

# Modelo Rol_comite
class RolComite(models.Model):
    # atributo de la clase Rol_comite
    rol_comite = models.CharField(verbose_name="Rol Comite", max_length=50)
    create_at = models.DateField(auto_now_add=True, verbose_name="Creado el", null=True)
    modify_at = models.DateField(auto_now=True, verbose_name="Actualizado el")

    class Meta:
        verbose_name = "Rol comite"
        verbose_name_plural = "Roles comite"
    
    # Método string que devuelve el rol en el comite
    def __str__(self):
        return self.rol_comite

# Modelo participantes comite
class ParticipanteComite(models.Model):    
    empleado = models.ForeignKey(Empleados, on_delete=CASCADE)
    cargo = models.ForeignKey(Cargos, on_delete=models.CASCADE)
    rol_comite = models.ForeignKey(RolComite, on_delete=CASCADE, default=1)
    create_at = models.DateField(auto_now_add=True, verbose_name="Creado el", null=True)
    modify_at = models.DateField(auto_now=True, verbose_name="Actualizado el")

    class Meta:
        verbose_name = "Participante"
        verbose_name_plural = "Participantes"
        
    # Método string que devuelve los participantes del comite
    def __str__(self):
        return str(self.rol_comite)

