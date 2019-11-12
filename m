Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AB2F9E15
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 00:19:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED2FE89CB9;
	Tue, 12 Nov 2019 23:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 233EA89CB9
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 23:19:31 +0000 (UTC)
Received: from bell.riseup.net (bell-pn.riseup.net [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 47CNxG5tl8zDyb4;
 Tue, 12 Nov 2019 15:19:30 -0800 (PST)
X-Riseup-User-ID: 40813EED2DEAFAAE2E79D5C49CCDCD08ED5B927E8BA602649D72214BB1C15195
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 47CNxG4j7KzJsYv;
 Tue, 12 Nov 2019 15:19:30 -0800 (PST)
From: Francisco Jerez <currojerez@riseup.net>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191112224757.25116-2-matthew.d.roper@intel.com>
References: <20191112224757.25116-1-matthew.d.roper@intel.com>
 <20191112224757.25116-2-matthew.d.roper@intel.com>
Date: Tue, 12 Nov 2019 15:20:03 -0800
Message-ID: <877e44znq4.fsf@riseup.net>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=riseup.net; s=squak; 
 t=1573600770; bh=yDYHqA4cRPGHRervZqREu7r/SPvELsTjzxYfiQ5BlAc=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=TqUB12yDDqdP+DB79xJJ/V8BZ8b2ifrERg120yzWflflicbm/HQS5ugZjYSYbnnhM
 KdtpV68uGMOMv669u1gH2VTRS/cN36oqBnxzVR2zNhNIv+zEldBVeYaOXa3iqhPOZa
 qipr6rKHz7tE2XNf6g4d/stLiN7oZFXwOb93BaE0=
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/tgl: MOCS table update
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: multipart/mixed; boundary="===============1270674464=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1270674464==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Matt Roper <matthew.d.roper@intel.com> writes:

> The bspec was just updated with a minor correction to entry 61 (it
> shouldn't have had the SCF bit set).
>
> v2:
>  - Add a MOCS_ENTRY_UNUSED() and use it to declare the
>    explicitly-reserved MOCS entries. (Lucas)
>  - Move the warning suppression from the Makefile to a #pragma that only
>    affects the TGL table. (Lucas)
>
> v3:
>  - Entries 16 and 17 are identical to ICL now, so no need to explicitly
>    adjust them (or mess with compiler warning overrides).
>
> Bspec: 45101
> Fixes: 2ddf992179c4 ("drm/i915/tgl: Define MOCS entries for Tigerlake")
> Cc: Tomasz Lis <tomasz.lis@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Francisco Jerez <francisco.jerez.plata@intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Francisco Jerez <currojerez@riseup.net>

> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/=
gt/intel_mocs.c
> index 06e2adbf27be..2b977991b785 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -263,7 +263,7 @@ static const struct drm_i915_mocs_entry tigerlake_moc=
s_table[] =3D {
>  		   L3_1_UC),
>  	/* HW Special Case (Displayable) */
>  	MOCS_ENTRY(61,
> -		   LE_1_UC | LE_TC_1_LLC | LE_SCF(1),
> +		   LE_1_UC | LE_TC_1_LLC,
>  		   L3_3_WB),
>  };
>=20=20
> --=20
> 2.21.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXcs+IwAKCRCDmTidfVK/
W+R0AP9F+MEUdw0NwDSTEVrZtjtvu29Kx31xpCe4ncHqZZf4rwD3f1p1Ar1KN0/H
P2IzphO6OOCC0PlB4negz00871wdKg==
=xOHm
-----END PGP SIGNATURE-----
--==-=-=--

--===============1270674464==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1270674464==--
