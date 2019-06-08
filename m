Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AB13A081
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jun 2019 17:40:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE95E89254;
	Sat,  8 Jun 2019 15:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.bonedaddy.net (smtp.bonedaddy.net [45.33.94.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D442689254;
 Sat,  8 Jun 2019 15:40:28 +0000 (UTC)
Received: from chianamo (n58-108-67-123.per1.wa.optusnet.com.au
 [58.108.67.123])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: pabs3@bonedaddy.net)
 by smtp.bonedaddy.net (Postfix) with ESMTPSA id 11D28180044;
 Sat,  8 Jun 2019 11:40:24 -0400 (EDT)
Message-ID: <5c61b516222261594aca5e6eb8fbf38fcaefe0ec.camel@bonedaddy.net>
From: Paul Wise <pabs3@bonedaddy.net>
To: Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <24d1a13799ae7e0331ff668d9b170c4920d7d762.camel@bonedaddy.net>
References: <20190607110513.12072-1-jani.nikula@intel.com>
 <20190607110513.12072-2-jani.nikula@intel.com>
 <20190607151021.GJ21222@phenom.ffwll.local>
 <24d1a13799ae7e0331ff668d9b170c4920d7d762.camel@bonedaddy.net>
Date: Sat, 08 Jun 2019 23:40:21 +0800
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
Content-Type: multipart/mixed; boundary="===============1473008991=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1473008991==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-kOOwBpdc/ZHVwtVwc55x"


--=-kOOwBpdc/ZHVwtVwc55x
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2019-06-08 at 13:10 +0800, Paul Wise wrote:

> I'll test that it also works with an nVidia GPU & noveau drivers
> later today once that system is available.

Same results as with the Intel GPU:

Correct screen resolution but missing EDID override data.

--=20
bye,
pabs

https://bonedaddy.net/pabs3/

--=-kOOwBpdc/ZHVwtVwc55x
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEYQsotVz8/kXqG1Y7MRa6Xp/6aaMFAlz71uEACgkQMRa6Xp/6
aaMgCw/9EDgCzD7xCdK8YXcalOTEB5H+MIokDGLI18mh0EmU/VR+WweEZ0Ml9qEK
dHW3SJYvd36WvHX0YLxGEugUdGz8wu+fLx4oiX/tOecQLE+ZKqw+1v+wSuBoSPqH
DDc8Lpyj+PQ134o3wgbVUgTkNKUkJP4DrNYL3E5mKee/FyDGNvqjxPc99EA306by
TahoNY1UTIS+to+edHcxjPkDI0dZ9zaXNsnVLMRF/oKjZBSHSP4ytAhNy8ZHWTO1
UNZqWUg2ySbzgIkwii0SnmjY0NrFMY1nPSB+Di2XO3z2yPbvE7AjjM5ZYdu53buk
CTyN6PscYTlbNT5PlTnQAxM7agRNZbGBY7G9lKpPcb7gye45fDw+VSsbteRMKNql
MTUa/+rUI5bjvmVsxCfkVC5913/WYouRGfLyXbgKu5FFsR6hFJyUqK2SRpyQpd0x
+q4aNi14cSscqooOyout7cAyafHHlaO9hESywfbaXTJ9HvN/ebr8a8wiQbpwR1sh
YPxkURbPbEn7w/S/p3gugfMULPWGajUlg/5rNFS8eWds7QC8JqD/E2TL+5ZSXLl/
ke9HgXdmJnLEg/mGqZfMbfXcIxINT7So6KpXttVjNW7n+sJ+pXCuivKYAdsNOUav
srL8tHLYIVoWR650jPvHtyulKcK//nBN5/l3zqNoCCUcfXe0cuo=
=mGZA
-----END PGP SIGNATURE-----

--=-kOOwBpdc/ZHVwtVwc55x--


--===============1473008991==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1473008991==--

