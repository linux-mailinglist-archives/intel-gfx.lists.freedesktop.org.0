Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5538BF9DE9
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 00:15:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4AB66E02B;
	Tue, 12 Nov 2019 23:14:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4410D6E02B
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 23:14:59 +0000 (UTC)
Received: from bell.riseup.net (bell-pn.riseup.net [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 47CNr26lY2zDqX5;
 Tue, 12 Nov 2019 15:14:58 -0800 (PST)
X-Riseup-User-ID: 16835BD9D91A203AD0E1AC66A4C006267B0B82E4A7E915AE9318FE84DDCCADAD
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 47CNr23jFGzJqRq;
 Tue, 12 Nov 2019 15:14:58 -0800 (PST)
From: Francisco Jerez <currojerez@riseup.net>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191112224757.25116-1-matthew.d.roper@intel.com>
References: <20191112224757.25116-1-matthew.d.roper@intel.com>
Date: Tue, 12 Nov 2019 15:15:28 -0800
Message-ID: <87h838znxr.fsf@riseup.net>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=riseup.net; s=squak; 
 t=1573600499; bh=mKohBKcB17DzFUh1LG8sdJKvqxWO/pjuOPV3LvYAI7E=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=F8LJhROpkOzmqmxJme85o7lvryv8jUhemeyVIiBTX8AH53X23HvdAyQBTQNWfTMaR
 oRlQuH/BFogf3jaQhx9S9l4MGbBjQmXSygbdpxaqps2ClLiFxoL/VyBTZ0qPt2u03b
 kOqO6siiYyEQMFGfvA4OivwnlM3z977YyYAVA4JY=
Subject: Re: [Intel-gfx] [PATCH v3 1/2] Revert "drm/i915/ehl: Update MOCS
 table for EHL"
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
Content-Type: multipart/mixed; boundary="===============1201575050=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1201575050==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Matt Roper <matthew.d.roper@intel.com> writes:

> This reverts commit f4071997f1de016780ec6b79c63d90cd5886ee83.
>
> These extra EHL entries won't behave as expected without a bit more work
> on the kernel side so let's drop them until that kernel work has had a
> chance to land.  Userspace trying to use these new entries won't get the
> advantage of the new functionality these entries are meant to provide,
> but at least it won't misbehave.
>
> When we do add these back in the future, we'll probably want to
> explicitly use separate tables for ICL and EHL so that userspace
> software that mistakenly uses these entries (which are undefined on ICL)
> sees the same behavior it sees with all the other undefined entries.
>
> Cc: Francisco Jerez <francisco.jerez.plata@intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

I think f4071997f1de016780ec6b79c63d90cd5886ee83 has hit a few kernel
releases already.  Wouldn't it make sense to CC stable?

Patch is:

Reviewed-by: Francisco Jerez <currojerez@riseup.net>

> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 8 --------
>  1 file changed, 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/=
gt/intel_mocs.c
> index 6e881c735b20..06e2adbf27be 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -200,14 +200,6 @@ static const struct drm_i915_mocs_entry broxton_mocs=
_table[] =3D {
>  	MOCS_ENTRY(15, \
>  		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(2) | LE_AOM(1), \
>  		   L3_3_WB), \
> -	/* Bypass LLC - Uncached (EHL+) */ \
> -	MOCS_ENTRY(16, \
> -		   LE_1_UC | LE_TC_1_LLC | LE_SCF(1), \
> -		   L3_1_UC), \
> -	/* Bypass LLC - L3 (Read-Only) (EHL+) */ \
> -	MOCS_ENTRY(17, \
> -		   LE_1_UC | LE_TC_1_LLC | LE_SCF(1), \
> -		   L3_3_WB), \
>  	/* Self-Snoop - L3 + LLC */ \
>  	MOCS_ENTRY(18, \
>  		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3) | LE_SSE(3), \
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

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXcs9EAAKCRCDmTidfVK/
WwhcAQCeUIVr4XEJKJPRx/GdXudUJ9NKQvklqPJVxyOqvWxcagD7BQmS3FnlL3kX
LpHcg65r5OoPVhnHoQIdVQ66wMUTPTM=
=2ojo
-----END PGP SIGNATURE-----
--==-=-=--

--===============1201575050==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1201575050==--
