Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DA139B41
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jun 2019 07:11:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7601891FF;
	Sat,  8 Jun 2019 05:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.bonedaddy.net (smtp.bonedaddy.net [45.33.94.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB13B891FF;
 Sat,  8 Jun 2019 05:11:00 +0000 (UTC)
Received: from chianamo (n58-108-67-123.per1.wa.optusnet.com.au
 [58.108.67.123])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: pabs3@bonedaddy.net)
 by smtp.bonedaddy.net (Postfix) with ESMTPSA id C49E6180041;
 Sat,  8 Jun 2019 01:10:54 -0400 (EDT)
Message-ID: <24d1a13799ae7e0331ff668d9b170c4920d7d762.camel@bonedaddy.net>
From: Paul Wise <pabs3@bonedaddy.net>
To: Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20190607151021.GJ21222@phenom.ffwll.local>
References: <20190607110513.12072-1-jani.nikula@intel.com>
 <20190607110513.12072-2-jani.nikula@intel.com>
 <20190607151021.GJ21222@phenom.ffwll.local>
Date: Sat, 08 Jun 2019 13:10:51 +0800
MIME-Version: 1.0
User-Agent: Evolution 3.30.5-1.1 
Subject: Re: [Intel-gfx] [PATCH 2/2] drm: add fallback override/firmware
 EDID modes workaround
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Ilpo =?ISO-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@cs.helsinki.fi>
Content-Type: multipart/mixed; boundary="===============1582268331=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1582268331==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-bpYT9ku/9oKoEROB5ndj"


--=-bpYT9ku/9oKoEROB5ndj
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-06-07 at 17:10 +0200, Daniel Vetter wrote:

> As discussed on irc, we need tested-by here from the reporters since
> there's way too many losing and frustrangingly few winning moves here.

Tested-by: Paul Wise <pabs3@bonedaddy.net>

I've tested these two patches on top of Linux v5.2-rc3 and the EDID
override works correctly on an Intel Ironlake GPU with a monitor that
lost its EDID a while ago.

I'll test that it also works with an nVidia GPU & noveau drivers later
today once that system is available.

https://patchwork.freedesktop.org/series/61764/

--=20
bye,
pabs

https://bonedaddy.net/pabs3/

--=-bpYT9ku/9oKoEROB5ndj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEYQsotVz8/kXqG1Y7MRa6Xp/6aaMFAlz7Q1cACgkQMRa6Xp/6
aaMi+Q//UJMU9LZGRUgS7CLCu9aZDIbXy5nZ9tGjVhJKxx/mHsfFRsxMIrxBt0pV
bisxaCn+zL8aqY/vWRpNL/EdHyl7R5pSmpxuOrKb/GX0vBk9bO40IwEJu9QdHWgQ
oL0TXkUAHa4erVFNJIqQ/+Zm6bXjlD85rpRGFqaPffhHxD5gdwmZh0nd2kEjIC3/
zlpdfE6Ip5vxLUzFt0hwcqmbSLp9YHL+XlGySwV27aG3HucVxp6eZl8hms3q/GPk
0PTpfZfZRVb/u3DIoB/hdgMn0RiKPdoYJ7/QT6g2mhA0gvK36mdz/0LAOhG5BstZ
LhKHTJZsZWnEBk+i5hkGbNGnPmfaCrG5H5qnl2u6Zi+illfLQ1P8tRbN9iRL2YVp
9l2d2CRCqcq42ANglgjXNS46DlnessW9JWY9GBph4n6RWm4WPHL96H8swpLClCWV
4PJOG8tLGfcATGdEZY42Id8VYTA+csEwe1GT7MaP4/gqbBqcuLoa7xwAdmZZV/H/
mxcwWuf6uyUIFXR2UDNFySw5g6Z+OLduVoKwj7ZZIbqcGyIlH80eq4jEUnfoliP0
P9kk3OD3/QWOfEg0ImFFqRR3v/yAvc71aj4oTXmg4HM8O6OnUaVsdE83AQxPv9/f
gWYMxt+yVPNke7cNyMqxa88dN1664HH0yxU0MldnySf0ST7hD+E=
=hCLl
-----END PGP SIGNATURE-----

--=-bpYT9ku/9oKoEROB5ndj--


--===============1582268331==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1582268331==--

