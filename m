Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2948F15588D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 14:37:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83B7D6EABA;
	Fri,  7 Feb 2020 13:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FF796EABA;
 Fri,  7 Feb 2020 13:37:56 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 39877AD85;
 Fri,  7 Feb 2020 13:37:55 +0000 (UTC)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200204150146.2006481-1-daniel.vetter@ffwll.ch>
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 mQENBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAG0J1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPokBVAQTAQgAPhYh
 BHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJbOdLgAhsDBQkDwmcABQsJCAcCBhUKCQgLAgQWAgMB
 Ah4BAheAAAoJEGgNwR1TC3ojR80H/jH+vYavwQ+TvO8ksXL9JQWc3IFSiGpuSVXLCdg62AmR
 irxW+qCwNncNQyb9rd30gzdectSkPWL3KSqEResBe24IbA5/jSkPweJasgXtfhuyoeCJ6PXo
 clQQGKIoFIAEv1s8l0ggPZswvCinegl1diyJXUXmdEJRTWYAtxn/atut1o6Giv6D2qmYbXN7
 mneMC5MzlLaJKUtoH7U/IjVw1sx2qtxAZGKVm4RZxPnMCp9E1MAr5t4dP5gJCIiqsdrVqI6i
 KupZstMxstPU//azmz7ZWWxT0JzgJqZSvPYx/SATeexTYBP47YFyri4jnsty2ErS91E6H8os
 Bv6pnSn7eAq5AQ0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRH
 UE9eosYbT6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgT
 RjP+qbU63Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+R
 dhgATnWWGKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zb
 ehDda8lvhFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r
 12+lqdsAEQEAAYkBPAQYAQgAJhYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJbOdLgAhsMBQkD
 wmcAAAoJEGgNwR1TC3ojpfcIAInwP5OlcEKokTnHCiDTz4Ony4GnHRP2fXATQZCKxmu4AJY2
 h9ifw9Nf2TjCZ6AMvC3thAN0rFDj55N9l4s1CpaDo4J+0fkrHuyNacnT206CeJV1E7NYntxU
 n+LSiRrOdywn6erjxRi9EYTVLCHcDhBEjKmFZfg4AM4GZMWX1lg0+eHbd5oL1as28WvvI/uI
 aMyV8RbyXot1r/8QLlWldU3NrTF5p7TMU2y3ZH2mf5suSKHAMtbE4jKJ8ZHFOo3GhLgjVrBW
 HE9JXO08xKkgD+w6v83+nomsEuf6C6LYrqY/tsZvyEX6zN8CtirPdPWu/VXNRYAl/lat7lSI
 3H26qrE=
Message-ID: <3f1d5e20-e75d-cf35-92fa-b23ae586d0e7@suse.de>
Date: Fri, 7 Feb 2020 14:37:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200204150146.2006481-1-daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 0/5] disable drm_global_mutex for most
 drivers, take 2
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0602263190=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0602263190==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="un3Ao77glhGx0XeYouh5fltAFYCrKCNJm"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--un3Ao77glhGx0XeYouh5fltAFYCrKCNJm
Content-Type: multipart/mixed; boundary="6XX2qTg3IGfXsVzH2QqOf6BoX3nZV47cH";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Message-ID: <3f1d5e20-e75d-cf35-92fa-b23ae586d0e7@suse.de>
Subject: Re: [PATCH 0/5] disable drm_global_mutex for most drivers, take 2
References: <20200204150146.2006481-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200204150146.2006481-1-daniel.vetter@ffwll.ch>

--6XX2qTg3IGfXsVzH2QqOf6BoX3nZV47cH
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

On patches 2 to 5:

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>

I'm not overly knowledgeable on DRM locking semantics, but the patches
appear to be correct in general.

Best regards
Thomas


Am 04.02.20 um 16:01 schrieb Daniel Vetter:
> CI didn't like my test-with tag :-/
>=20
> Test-with: 20200128112549.172135-1-daniel.vetter@ffwll.ch
>=20
> Daniel Vetter (5):
>   drm: Complain if drivers still use the ->load callback
>   drm/fbdev-helper: don't force restores
>   drm/client: Rename _force to _locked
>   drm: Push drm_global_mutex locking in drm_open
>   drm: Nerf drm_global_mutex BKL for good drivers
>=20
>  drivers/gpu/drm/drm_client_modeset.c | 12 +++++---
>  drivers/gpu/drm/drm_drv.c            | 26 +++++++++-------
>  drivers/gpu/drm/drm_fb_helper.c      | 16 ++--------
>  drivers/gpu/drm/drm_file.c           | 46 ++++++++++++++++++++++++++--=

>  drivers/gpu/drm/drm_internal.h       |  1 +
>  include/drm/drm_client.h             |  7 ++++-
>  include/drm/drm_drv.h                |  3 ++
>  7 files changed, 79 insertions(+), 32 deletions(-)
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--6XX2qTg3IGfXsVzH2QqOf6BoX3nZV47cH--

--un3Ao77glhGx0XeYouh5fltAFYCrKCNJm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl49aC8ACgkQaA3BHVML
eiNsRAgAj1v2CxKAEDPmv0TpsNo9nSXU21eSnCPNQ2GHpFdklyqdK6mMkNyEmdTF
aQm5mis3B83oiPk85ZNXVivSJ5Z4PpUMaBIqFpn/wt0j1n83TBJLvEj3UFLr9rXT
Z+DI8hfFBChgGKYGNiaD4iqTs6UwSwELHIXm7UPPlfRubzyor6pE+OVYKYz/tCpf
8737tJuApA9W/KzlLIYniaTeJeS9uj9P8GOjXY1Jg/rzl9cayGIjGF/KZVa8XS5r
vHdpouWXPd2CN2R34sThIo9ZEHVRMhNJ2kF0lnDaWhmQe4WpfhpLdmZn+LhHK7ws
7NkIgM/oXDSyk12iKE0D2Cu/Zis3jg==
=nEQx
-----END PGP SIGNATURE-----

--un3Ao77glhGx0XeYouh5fltAFYCrKCNJm--

--===============0602263190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0602263190==--
