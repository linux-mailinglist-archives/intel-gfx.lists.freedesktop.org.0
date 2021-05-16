Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50193382B90
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 13:57:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCB026E933;
	Mon, 17 May 2021 11:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84DD56E862
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 May 2021 19:49:52 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>) id 1liMlq-0005K0-TH
 for intel-gfx@lists.freedesktop.org; Sun, 16 May 2021 21:49:50 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>) id 1liMlq-0006qT-Jy
 for intel-gfx@lists.freedesktop.org; Sun, 16 May 2021 21:49:50 +0200
Date: Sun, 16 May 2021 21:49:50 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210516194950.ohebcbuhslrwfyow@pengutronix.de>
References: <20210514100142.1182997-1-u.kleine-koenig@pengutronix.de>
 <162102397951.21338.1442528312690170422@emeril.freedesktop.org>
MIME-Version: 1.0
In-Reply-To: <162102397951.21338.1442528312690170422@emeril.freedesktop.org>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-gfx@lists.freedesktop.org
X-Mailman-Approved-At: Mon, 17 May 2021 11:57:02 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Only_select_I2C=5FALGOBIT_for_drivers_that_actually_need_it?=
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
Content-Type: multipart/mixed; boundary="===============1900906738=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1900906738==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="22rvc6y25nw5234m"
Content-Disposition: inline


--22rvc6y25nw5234m
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, May 14, 2021 at 08:26:19PM -0000, Patchwork wrote:
> =3D=3D Series Details =3D=3D
>=20
> Series: drm: Only select I2C_ALGOBIT for drivers that actually need it
> URL   : https://patchwork.freedesktop.org/series/90163/
> State : failure
>=20
> =3D=3D Summary =3D=3D
>=20
> CI Bug Log - changes from CI_DRM_10082_full -> Patchwork_20125_full
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>=20
> Summary
> -------
>=20
>   **FAILURE**
>=20
>   Serious unknown changes coming with Patchwork_20125_full absolutely nee=
d to be
>   verified manually.
>  =20
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20125_full, please notify your bug team to allo=
w them
>   to document this new failure mode, which will reduce false positives in=
 CI.
>=20
>  =20
>=20
> Possible new issues
> -------------------
>=20
>   Here are the unknown changes that may have been introduced in Patchwork=
_20125_full:
>=20
> ### IGT changes ###
>=20
> #### Possible regressions ####
>=20
>   * igt@gem_exec_gttfill@all:
>     - shard-apl:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20125/shard-ap=
l6/igt@gem_exec_gttfill@all.html
>=20
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20125/shard-sn=
b2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
>=20
>   * igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:
>     - shard-skl:          NOTRUN -> [FAIL][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20125/shard-sk=
l7/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html
>=20
>   * igt@kms_plane_cursor@pipe-a-overlay-size-256:
>     - shard-snb:          NOTRUN -> [FAIL][4] +1 similar issue
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20125/shard-sn=
b2/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

I have problems understanding this mail, but I assume that my patch is
not the problem here as these are all runtime errors if I'm not
mistaken. If my patch has a problem it should result in a build failure
instead. Am I missing something?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--22rvc6y25nw5234m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmChd1oACgkQwfwUeK3K
7An1WQf/e8K3F6HYE5AdO3008YJcJQHFRBki1YHhoFGy2OpwcjKawV3CGRvnbF2S
MZ7NtukaaJWResirgxkSlM0eTu+pxF7E64cPfkWCMAsWSSys0MX6bnl+zAzg6o8u
PWYnQUmZTLevM4GPRw22nDCP4/0KLMFrZYSMC6Q4kyuGbSd6z74H8FWZNKeF35g9
nm+gMKug0zGUyjnW4cSdM6htz5fqmQzlhCcRYyxae9lJdKPdraLZlJ0Hmw0T9yHC
e3NbpZqLTkb5G0oI0K5WoxHuEKdUkpnNOBufZpqR2SLXFSG8XbUGPiOhynKzyNey
p5O3iAR9RRHg/Rw6vkT0hT36Gza4YA==
=NI/N
-----END PGP SIGNATURE-----

--22rvc6y25nw5234m--

--===============1900906738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1900906738==--
