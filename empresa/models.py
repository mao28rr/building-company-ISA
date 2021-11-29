from django.db import models
from django.contrib.auth.models import User
from django.db.models import CASCADE
from core.types.sino import SiNo
 
# Create your models here.    

# Modelo tipo de empresa
class TipoEmpresa(models.Model):
    # atributo de la clase tipo de empresa
    nombre_tipo = models.CharField(verbose_name = "Tipo de empresa", max_length = 150, null = False)
    create_at = models.DateField(auto_now_add=True, verbose_name="Creado el", null=True)
    modify_at = models.DateField(auto_now=True, verbose_name="Actualizado el") 
    
    class Meta:
        verbose_name = "Tipo de empresa"
        verbose_name_plural = "Tipo de empresa"
 
    # Método string que devuelve el nombre de tipo de empresa
    def __str__(self):
        return self.nombre_tipo
    
# Modelo empresa 
class Empresa (models.Model):
    # atributos de la clase empresa
    tipo_empresa = models.OneToOneField(TipoEmpresa, on_delete=models.CASCADE)
    nombre = models.CharField(max_length = 256, verbose_name = "Nombre de la empresa", null = False)
    nit = models.CharField(max_length = 25, verbose_name = "Número de identificación tributaria", null = False)
    actividad_economica = models.CharField(max_length = 50, verbose_name = "Actividad económica", null = False)
    nivel_de_riesgo = models.CharField(max_length = 10, verbose_name = "Nivel de riesgo", null = False)
    naturaleza_juridica = models.CharField(max_length = 50, verbose_name = "Naturaleza jurídica", null = False)
    correo_electronico = models.CharField(max_length = 25, verbose_name = "Correo electrónico", null = False)
    numeros_telefonicos = models.CharField(max_length = 40, verbose_name = "Números telefónicos", null = False)
    create_at = models.DateField(auto_now_add=True, verbose_name="Creado el", null=True)
    modify_at = models.DateField(auto_now=True, verbose_name="Actualizado el") 
    
    class Meta:
        verbose_name = "Empresa"
        verbose_name_plural = "Empresa"
    
    # Método string que devuelve el nombre de la empresa
    def __str__(self):
        return self.nombre

# Modelo Areas
class Areas (models.Model):
    # atributo de la clase área
    empresa = models.ForeignKey(Empresa, on_delete=models.CASCADE)
    nombre_area = models.CharField(max_length = 150, verbose_name = "Área", null = False)
    create_at = models.DateField(auto_now_add=True, verbose_name="Creado el", null=True)
    modify_at = models.DateField(auto_now=True, verbose_name="Actualizado el") 
    
    class Meta:
        verbose_name = "Área"
        verbose_name_plural = "Áreas"
        
    # Método string que devuelve las áreas
    def __str__(self):
        return self.nombre_area
        
# Modelo cargos
class Cargos (models.Model):
    cargo = models.CharField(max_length = 150, verbose_name = "Cargo", null = False)
    salario_cargo = models.DecimalField(verbose_name = "Salario del cargo",max_digits = 10, decimal_places = 2)
    create_at = models.DateField(auto_now_add=True, verbose_name="Creado el", null=True)
    modify_at = models.DateField(auto_now=True, verbose_name="Actualizado el") 
    
    class Meta:
        verbose_name = "Cargo"
        verbose_name_plural = "Cargos"
    
    # Método string que devuelve el nombre de los cargos
    def __str__(self):
        return self.cargo
    
# Modelo nivel académico
class NivelAcademico (models.Model):
    nivel_academico = models.CharField(max_length = 40, verbose_name = "Nivel Acedémico", null = False)
    create_at = models.DateField(auto_now_add=True, verbose_name="Creado el", null=True)
    modify_at = models.DateField(auto_now=True, verbose_name="Actualizado el") 
    
    class Meta:
        verbose_name = "Nivel académico"
        verbose_name_plural = "Niveles académicos"
    
    # Método string que devuelve el nivel académico
    def __str__(self):
        return self.nivel_academico
        
# Modelo Empleados
class Empleados (models.Model):
    # atributos de la clase empleado
    usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    cargo = models.ForeignKey(Cargos, on_delete=models.CASCADE)
    area = models.OneToOneField(Areas, on_delete=models.CASCADE)
    nivel = models.ForeignKey(NivelAcademico, on_delete=models.CASCADE )
    id_empleado = models.CharField(max_length = 30, verbose_name = "ID empleado")
    fecha_ingreso = models.DateField(verbose_name = "Fecha de ingreso", auto_now = False, auto_now_add = False)
    sueldo = models.DecimalField(verbose_name = "Sueldo", max_digits = 12, decimal_places = 2)
    eps = models.CharField(max_length = 100, verbose_name = "EPS", default="N/A", null = False)
    arl = models.CharField(max_length = 100, verbose_name = "ARL", default="N/A", null = False)
    afp = models.CharField(max_length = 100, verbose_name = "AFP", default="N/A", null = False)
    cuenta_bancaria = models.CharField(max_length = 30, verbose_name = "Número de cuenta bancaria",null = True )
    create_at = models.DateField(auto_now_add=True, verbose_name="Fecha de creación", null=True)
    modify_at = models.DateField(auto_now=True, verbose_name="Fecha de actualización") 
    
    class Meta:
        verbose_name = "Empleado"
        verbose_name_plural = "Empleados"
        
    # Método string que devuelve el nombre de los empleados
    def __str__(self):
        return f'{self.usuario}'
    
# Modelo capacitaciones 
class Capacitaciones(models.Model):
    empleado = models.ForeignKey(Empleados,on_delete=models.CASCADE)
    nombre_capacitacion = models.CharField(verbose_name="Nombre de la capacitación", max_length=400, null = False)
    certificado = models.CharField(verbose_name="Tiene certificado?", choices=SiNo, max_length=2)
    create_at = models.DateField(auto_now_add=True, verbose_name="Creado el", null=True)
    modify_at = models.DateField(auto_now=True, verbose_name="Actualizado el") 

# Modelo Sanidad
class Sanidad(models.Model):
    enfermedad = models.CharField(verbose_name="Nombre de la enfermedad",max_length=255)
    pandemia = models.CharField(verbose_name="Es Pandemia?",choices=SiNo, max_length=2)
    create_at = models.DateField(auto_now_add=True, verbose_name="Creado el", null=True)
    modify_at = models.DateField(auto_now=True, verbose_name="Actualizado el")    

    class Meta:
        verbose_name = 'Sanidad (COVID-19 u otras)'
        verbose_name_plural = 'Sanidad (COVID-19 u otras)'

    def __str__(self):
        return f'{self.enfermedad}'

# Modelo detalle sanidad
class DetalleSanidad(models.Model):
    empleado = models.ForeignKey(Empleados,on_delete=models.CASCADE)
    enfermedad = models.ForeignKey(Sanidad, on_delete=models.CASCADE)
    vacuna = models.CharField(verbose_name="Vacuna", max_length=144)
    dosis = models.IntegerField(verbose_name="Número de dosis", null=True, blank=True)
    fecha_dosis = models.DateField(verbose_name="Fecha de aplicación", auto_now=False)
    create_at = models.DateField(auto_now_add=True, verbose_name="Creado el", null=True)
    modify_at = models.DateField(auto_now=True, verbose_name="Actualizado el") 

    class Meta:
        verbose_name = 'Sanidad - Detalle tratamiento'
        verbose_name_plural = 'Sanidad - Detalle tratamientos'

    def __str__(self):
        return f'{self.empleado}'