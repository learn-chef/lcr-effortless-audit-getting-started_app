pkg_name=compliance
pkg_origin=habichef
pkg_version="0.1.0"
pkg_maintainer="Scott Ford <sford@chef.io>"
pkg_license=("Apache-2.0")
pkg_deps=("chef/inspec" "core/cacerts")
pkg_svc_user="root"
pkg_binds_optional=(
  [chef_client_ident]="chef_client_ident"
)

do_download() {
  return 0;
}

do_build() {
  return 0;
}

do_install() {
  return 0;
}

