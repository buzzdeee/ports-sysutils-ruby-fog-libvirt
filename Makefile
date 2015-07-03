# $OpenBSD: Makefile,v 1.3 2015/07/01 09:00:38 sebastia Exp $

COMMENT =	Puppet module management

DISTNAME =	fog-libvirt-0.0.2
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/adrienthebo/r10k
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		converters/ruby-json,${MODRUBY_FLAVOR} \
			sysutils/ruby-fog-core,${MODRUBY_FLAVOR} \
			sysutils/ruby-libvirt,${MODRUBY_FLAVOR} \
			textproc/ruby-fog-json,${MODRUBY_FLAVOR} \
			textproc/ruby-fog-xml,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
