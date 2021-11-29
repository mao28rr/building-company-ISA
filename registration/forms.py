from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.db.models import fields
from django.forms import widgets
from .models import Profile, ContactoEmergencia


# Formulario para validar email ya registrado::
class UserCreationWithEmail(UserCreationForm):
    # 1. Capturamos el correo desde el formulario:
    email = forms.EmailField(required=True, help_text="Requerido, 200 caracteres como máximo")

    class Meta:
        model = User
        fields = ("username", "email", "password1", "password1")

    # 2. Validamos si el usuario existe en la base de datos:
    def clean_email(self):
        email = self.cleaned_data.get("email")
        if User.objects.filter(email= email).exists():
            raise forms.ValidationError("El Email ya se encuentra registrado.")
        return email
    # Fin

# Clase para el formulario de mi perfil como usuario:
class ProfileForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ['avatar','profesion','cedula','telefono', 'celular','direccion', 'genero', 'fecha_nacimiento']
        widgets = {
            'avatar': forms.ClearableFileInput(attrs = {'class':'form-control mt-2'}),
            'profesion': forms.TextInput(attrs = {'class':'form-control mt-2', 'placeholder':'Profesión u Ocupación'}),
            'cedula':  forms.TextInput(attrs = {'class':'form-control mt-2', 'placeholder':'Cédula'}),
            'telefono': forms.TextInput(attrs = {'class':'form-control mt-2', 'placeholder':'Teléfono'}),
            'celular': forms.TextInput(attrs = {'class':'form-control mt-2', 'placeholder':'Celular'}),
            'direccion': forms.TextInput(attrs = {'class':'form-control mt-2', 'placeholder':'Dirección'}),
            'genero': forms.Select(attrs = {'class':'form-control mt-2'}),
            'fecha_nacimiento': forms.DateInput(format=('%Y-%m-%d'), attrs = {'class':'form-control mt-2', 'type':'date', 'placeholder':'Fecha de nacimiento'}),
        }

# Clase para el formulario de contacto de emergencia
class ContactoEmergenciaForm(forms.ModelForm):
    class Meta:
        model = ContactoEmergencia
        fields = ['usuario','contacto_emergencia','parentesco_emergencia','telefono_emergencia']
        widgets = {
            'usuario': forms.TextInput(attrs = {'class':'form-control mt-2', 'placeholder':'usuario'}),
            'contacto_emergencia':  forms.TextInput(attrs = {'class':'form-control mt-2', 'placeholder':'Contacto de emergencia'}),
            'parentesco_emergencia': forms.TextInput(attrs = {'class':'form-control mt-2', 'placeholder':'Parentesco'}),
            'telefono_emergencia': forms.TextInput(attrs = {'class':'form-control mt-2', 'placeholder':'Teléfono de emergencia'}),
            
        }