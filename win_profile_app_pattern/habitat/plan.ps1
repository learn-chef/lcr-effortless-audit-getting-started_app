$pkg_name="windows_baseline"
$pkg_origin="habichef"
$pkg_version="0.1.0"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=("Apache-2.0")
$pkg_build_deps=@("thelunaticscripter/inspec", "core/7zip")
$pkg_deps=@("thelunaticscripter/inspec")
$pkg_description="A Chef Policy for INSPEC 2016"

function Invoke-Build {
    mkdir ./vendor
    #Invoke-WebRequest -Uri https://github.com/dev-sec/windows-baseline/archive/master.tar.gz -OutFile ./vendor/master.tar.gz
    Copy-Item $PLAN_CONTEXT/../* $HAB_CACHE_SRC_PATH/$pkg_dirname -Recurse -Force
    inspec vendor --overwrite
}

function Invoke-Install {
    New-Item -Type directory $pkg_prefix/dist
    Copy-Item ./* $pkg_prefix/dist/ -Recurse -Force -Exclude *.hart,habitat,results
}