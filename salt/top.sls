base:

# The * marks that these state files will always be run.
  '*':
    - base


# These state files will run in the name of the server starts with web
  'web*':
    #- user.spid-operations
    - repos.reckoning_config_base