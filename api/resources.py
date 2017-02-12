from tastypie.authorization import Authorization
from tastypie.resources import ModelResource, ALL
from api.models import User


class UserResource(ModelResource):
    """
    Resource class to work with Users

    This gives API to interact with User model, allow to get, create and
    update users,
        GET - get registered user
        POST - create user
        PUT - update user
    Not allow DELETE requests here
    """
    class Meta:
        queryset = User.objects.all()
        resource_name = 'users'
        include_resource_uri = False
        allowed_methods = ['get', 'post', 'put']
        excludes = ['auth_id']
        authorization = Authorization()
        filtering = {
            'role': ALL,
        }
