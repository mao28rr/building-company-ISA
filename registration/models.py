""" 
    Archivo para el modelo de datos del perfil de usuario
    nov-2021
    Eder Lara
"""
from django.db import models
from django.contrib.auth.models import User
from django.db.models.deletion import CASCADE
from django.dispatch import receiver            # Libreria para hacer los cambios en los datos
from django.db.models.signals import post_save  # Complemento de dispatch
from core.types.generos import Generos
from core.types.parentesco import Parentesco

# Función para cargar información tipo media: Imagenes de perfil:
def custom_upload_to(instance, filename):
    old_instance = Profile.objects.get(pk=instance.pk)
    old_instance.avatar.delete()
    return 'profiles/' + filename

# Create your models here.
class Profile(models.Model):
    usuario = models.OneToOneField(User, on_delete=CASCADE)
    avatar = models.ImageField(upload_to=custom_upload_to, null=True, blank=True)
    profesion = models.TextField(verbose_name="Profesión", max_length=120, null=True)
    cedula = models.CharField(verbose_name="Cédula", max_length=20, null=True, blank=True)
    telefono = models.CharField(verbose_name="Teléfono", max_length=20, null=True, blank=True)
    celular = models.CharField(verbose_name="Celular", max_length=20, null=True, blank=True)
    direccion = models.TextField(verbose_name="Dirección", null=True, blank=True)
    genero = models.CharField(verbose_name="Género", choices= Generos, max_length=20, default= "Otro")
    fecha_nacimiento = models.DateField(auto_now=False, auto_now_add=False, verbose_name= "Fecha de nacimiento", null=True, blank=True)
    create_at = models.DateField(auto_now=False, auto_now_add=True, verbose_name="Fecha de creación", null=True, blank=True) 
    modify_at = models.DateField(auto_now=True, auto_now_add=False, verbose_name="Fecha de actualización", null=True, blank=True)

    # Metadata del Modelo:
    class Meta:
        verbose_name = 'Perfil de usuario'
        verbose_name_plural = 'Perfiles de usuario'
        ordering = ['usuario__username']


class ContactoEmergencia(models.Model):
    usuario = models.ForeignKey(User, on_delete=CASCADE)
    contacto_emergencia = models.CharField(max_length=255, verbose_name="Contacto de emergencia", null=True, blank=True)
    parentesco_emergencia = models.CharField(max_length=20, choices= Parentesco,verbose_name="Parentesco", null=True, blank=True)
    telefono_emergencia = models.CharField(max_length=20, verbose_name="Teléfono de emergencia", null=True, blank=True)
    create_at = models.DateField(auto_now_add=True, verbose_name="Fecha de creación", null=True)  
    modify_at = models.DateField(auto_now=True, verbose_name="Fecha de actualización")

    class Meta:
        ordering = ['usuario__username']
    
    def __str__(self):
        return str(self.usuario)

    # Función exclusiva para los usuarios logueados:
@receiver(post_save, sender=User)
def ensure_profile_exists(sender, instance, **kwargs):
    if kwargs.get('created', False):
        Profile.objects.get_or_create(usuario=instance)
