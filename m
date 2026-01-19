Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E074D3BA57
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 23:04:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3E1710E530;
	Mon, 19 Jan 2026 22:04:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="JacXpEjr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5288E10E530
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jan 2026 22:04:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E7E9F43EC4
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jan 2026 22:04:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53BCEC116C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jan 2026 22:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1768860264;
 bh=ddoX8ZX7BIMT+tU5gXkzUGRXcUVVwUwuaeMC6zUlHgo=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=JacXpEjrEV2HOr51Aqx7ZRyncVaHWQ/Rm0trdLS0L2XXDGqULVSbSxc4DWVetC49i
 pEaTrwxvv7PycFta3alt85ils+ciNty9D03w2WfnZFUQkWgqsTdIlpUZTWTDxY9006
 s9o4o89xtIcIeV1kEutEpv9izvZy6ojrYOJPmsx8WuU4EZO3nH8FidgC5CRxqUeFKV
 marHtPWwU/vt/bQ5FHM29c6Z95usTxePWCMKQOTkyZC37TZPV3buU65M67XAX35blc
 31qq5wfOOhxNQa69jz9PG+gIdZgTG3zSedSURMHzwEG+HXg+qjUwdUO+Eob0jYgznL
 rmhK5wYaPCiYA==
Date: Mon, 19 Jan 2026 22:04:21 +0000
From: Mark Brown <broonie@kernel.org>
To: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJVSUxEOiBmYWls?= =?utf-8?Q?ure_fo?=
 =?utf-8?Q?r?= linux-next: build failure after merge of the drm-misc tree
Message-ID: <a97a2761-12e3-4a55-86e3-4087226f3fa1@sirena.org.uk>
References: <aW5r7NzicgqvpaUj@sirena.org.uk>
 <176885888710.169327.3706500302616245978@a3b018990fe9>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="DCxww5iaNugtIZdD"
Content-Disposition: inline
In-Reply-To: <176885888710.169327.3706500302616245978@a3b018990fe9>
X-Cookie: Does not include installation.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--DCxww5iaNugtIZdD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 19, 2026 at 09:41:27PM -0000, Patchwork wrote:
> =3D=3D Series Details =3D=3D
>=20
> Series: linux-next: build failure after merge of the drm-misc tree
> URL   : https://patchwork.freedesktop.org/series/160314/
> State : failure
>=20
> =3D=3D Summary =3D=3D
>=20
> Error: patch https://patchwork.freedesktop.org/api/1.0/series/160314/revi=
sions/1/mbox/ not applied
> Applying: linux-next: build failure after merge of the drm-misc tree
> error: sha1 information is lacking or useless (drivers/gpu/drm/tests/drm_=
hdmi_state_helper_test.c).
> error: could not build fake ancestor
> hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
> Patch failed at 0001 linux-next: build failure after merge of the drm-mis=
c tree

This seems confused?

--DCxww5iaNugtIZdD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmluqmQACgkQJNaLcl1U
h9BLWAf+NW8W23ta7Ha9hjsl+OYMmtwjwxzROmXGPrhTVjiwdEQOiy+xgmEGJ2GZ
i3T9K4etvqFTHW3KruG9OgaG6SGHGHvCpp5vgEeBiuTDxK00fUuNgTsvNuOOz8op
WrKgayn4STQ9cj4/rRDs7+ywPEkxm45owewb3VuUwLQJy48MF+i2virgYW3fO2f1
V32f9Wnu3VLKinyM7YcbVHKknoRCCRCu074pHwXiS69R4IrygDCXDxUIIvIRm3EX
GxRd5NllGDuXWcm1uhiXMHxmspoZrrwe/HaOZ3Q35MvX6r6CPBZG73G4ZQQCNO3B
O00R3HDOBzCOgfWHT3IOVius+BoHcQ==
=iZsm
-----END PGP SIGNATURE-----

--DCxww5iaNugtIZdD--
