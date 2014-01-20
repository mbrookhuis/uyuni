Name:           suseRegisterInfo
Version:        2.1.1
Release:        1%{?dist}
Summary:        Tool to get informations from the local system
Group:          Productivity/Other
License:        GPL-2.0
URL:            http://www.novell.com
Source0:        %{name}-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
#BuildArch:      noarch
BuildRequires:  python-devel

Requires:       perl
Requires:       python
%{!?python_sitelib: %global python_sitelib %(%{__python} -c "from distutils.sysconfig import get_python_lib; print get_python_lib()")}

%description
This tool read data from the local system required
for a registration

%prep
%setup -q

%build

%install
make -C suseRegister install PREFIX=$RPM_BUILD_ROOT
mkdir -p %{buildroot}/usr/lib/suseRegister/bin/
install -m 0755 suseRegister/parse_release_info %{buildroot}/usr/lib/suseRegister/bin/parse_release_info

%if 0%{?suse_version}
%py_compile %{buildroot}/
%py_compile -O %{buildroot}/
%endif

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%dir /usr/lib/suseRegister
%dir /usr/lib/suseRegister/bin
/usr/lib/suseRegister/bin/parse_release_info
%{python_sitelib}/suseRegister

%changelog

