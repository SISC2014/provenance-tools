Summary: A packaging tool 
Name: ptu
Version: 1.0.0
Release: 1
License: MIT
Group: System Environment/Daemons
URL: http://dhtc.io
Source0: %{name}-%{version}.tar.gz
BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-root
Prefix: /opt

# User must run "export PATH=$PWD/ptu:$PATH" after installation 

%description
Provenance-To-Use is a packaging tool.

%prep
%setup -q

%build
cd ptu
make

%install
rm -rf $RPM_BUILD_ROOT
mkdir -p $RPM_BUILD_ROOT/opt
cp -r ptu $RPM_BUILD_ROOT/opt/ptu

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root,-)
%doc
/opt/ptu

%changelog
* Wed Jul 30 2014 Anton Yu <antonyu@login01.osgconnect.net> - 1.0.0-1
- Initial build.

