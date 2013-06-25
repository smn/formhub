from rest_framework import viewsets
from api.serializers import UserProfileSerializer, XFormSerializer,\
    ProjectSerializer
from main.models import UserProfile

from odk_logger.models import XForm

from api.models import Project


class UserProfileViewSet(viewsets.ModelViewSet):
    queryset = UserProfile.objects.all()
    serializer_class = UserProfileSerializer


class XFormViewSet(viewsets.ModelViewSet):
    queryset = XForm.objects.all()
    serializer_class = XFormSerializer


class ProjectViewSet(viewsets.ModelViewSet):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer