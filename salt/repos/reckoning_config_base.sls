# Deployment script for reckoning config files on a prod environment.


# We need to
# - check out the config files from SVN (own repo)
# - Make catalogs with the correct rights.


# Make the default config catalog.

prod_no_reckoning_config_initdeploy:
  file.directory:
    - name: {{pillar['prod_no_reckoning_config_base']}}
    - user: spid-operations
    - group: spp
    - mode: 2770
    - dir_mode: 2770
    - file_mode: 770
    - makedirs: True
    - recurse:
      - user
      - group

# Check out reckoning code from github.

spid-operations@50.57.45.61:/srv/config.prod.spid.no.git:
  git.latest:
#    - rev: {{ pillar["prod_no_reckoning_github_revision"] }}
    - user: spid-operations
    - target: {{pillar['prod_no_reckoning_config_base']}}
    - identity: /home/spid-operations/.ssh/svn_checkin_key_priv.rsa
    
