Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EADC3454E8
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 08:43:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7E498931F;
	Fri, 14 Jun 2019 06:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 573038931F
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 06:43:01 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45Q9z50BPZz9sBr;
 Fri, 14 Jun 2019 16:42:53 +1000 (AEST)
Date: Fri, 14 Jun 2019 16:42:53 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Patchwork <patchwork@emeril.freedesktop.org>
Message-ID: <20190614164253.1f8364ab@canb.auug.org.au>
In-Reply-To: <20190614044735.17471.63333@emeril.freedesktop.org>
References: <20190614144133.5dbea6bf@canb.auug.org.au>
 <20190614044735.17471.63333@emeril.freedesktop.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=canb.auug.org.au; s=201702; t=1560494577;
 bh=dXiO4rOFLK9rclkJoqVWBWUVC09gkZkbFj4mMiTUqX8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KQl90vchdQuQeRo4+sFsM06+qefW1P/oFAIXRJeGKHTZWkhMiSg3NbggdOb5QzSSy
 1WHj+4t7UO/LZErnqorAkm6VXBEe7DgZlL7kzgdx2nWmXw5Sg5G8hdy+iAdZeVbUHh
 wORPlmQnKU79zVYg4kN4DMmQimQ5g4xMQI6Nom9RUS1ccWOiEA09HXzi6L376qFqkR
 y97E0Nx//N5gdABMhDsUYod7h2dhz129PrszEr1Cjl3ng/j7eQ7sKhH8JbZp57H5KQ
 m0WIxbTzohQORbA5shFmlM3bo9UonlZt9UySQ8abGhQzrrjhFkywDX+1/5dMhLcHFz
 ljn1EWi4SW9sw==
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgbGlu?=
 =?utf-8?q?ux-next=3A_build_failure_after_merge_of_the_drm-misc_tree?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0087173564=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0087173564==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/9kVZhO6OWKhA2iosiMKs5w/"; protocol="application/pgp-signature"

--Sig_/9kVZhO6OWKhA2iosiMKs5w/
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

On Fri, 14 Jun 2019 04:47:35 -0000 Patchwork <patchwork@emeril.freedesktop.=
org> wrote:
>
> =3D=3D Series Details =3D=3D
>=20
> Series: linux-next: build failure after merge of the drm-misc tree
> URL   : https://patchwork.freedesktop.org/series/62080/
> State : failure
>=20
> =3D=3D Summary =3D=3D
>=20
> CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   DESCEND  objtool
>   CHK     include/generated/compile.h
>   CC [M]  drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.o
> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:4024:18: erro=
r: initialization from incompatible pointer type [-Werror=3Dincompatible-po=
inter-types]
>   .atomic_check =3D amdgpu_dm_connector_atomic_check,
>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:4024:18: note=
: (near initialization for =E2=80=98amdgpu_dm_connector_helper_funcs.atomic=
_check=E2=80=99)
> cc1: some warnings being treated as errors
> scripts/Makefile.build:278: recipe for target 'drivers/gpu/drm/amd/amdgpu=
/../display/amdgpu_dm/amdgpu_dm.o' failed
> make[4]: *** [drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.o=
] Error 1
> scripts/Makefile.build:489: recipe for target 'drivers/gpu/drm/amd/amdgpu=
' failed
> make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2
> scripts/Makefile.build:489: recipe for target 'drivers/gpu/drm' failed
> make[2]: *** [drivers/gpu/drm] Error 2
> scripts/Makefile.build:489: recipe for target 'drivers/gpu' failed
> make[1]: *** [drivers/gpu] Error 2
> Makefile:1071: recipe for target 'drivers' failed
> make: *** [drivers] Error 2
>=20

Can someone please stop this CI from trying to validate linux-next
merge fix patches ...

--=20
Cheers,
Stephen Rothwell

--Sig_/9kVZhO6OWKhA2iosiMKs5w/
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0DQe0ACgkQAVBC80lX
0Gyu5QgAnppd95nUdXyJR+jAQTeN0VipRvYmHxb5jF1mxRARdfzKMQwKrjyxkyyW
VEr1LvGzjlsKJ0qU0Yr6nHNJtjR9BI1YH5tJy2uc1AJdjy+Zh/NgeTvMslsp1eri
YGkdNpWfP4wbTqGz1fM/Zgm4EfkJWYtdnWSw7CUEk8PNy8rC+/yX0qLbq89fenud
OzwtAQhRXx/kFErpAx5G76bQFkdWFFqUk9+PHeZqgZVWwesY6tI/20n9RypeZ0bC
pYoaV1wWIBRmBmQ1q3WD2T+ViHrVnLg6mYf7h6LW37yucuXMkBLpArhSwsLec2HK
uDX+MOPzfHjqKv/xStnxX+G/V+FAEw==
=guwQ
-----END PGP SIGNATURE-----

--Sig_/9kVZhO6OWKhA2iosiMKs5w/--

--===============0087173564==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0087173564==--
